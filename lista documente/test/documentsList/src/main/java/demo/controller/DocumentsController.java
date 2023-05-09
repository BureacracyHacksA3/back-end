package demo.controller;

import demo.ImageUtil;
import demo.model.Document;
import demo.model.Task;
import demo.repository.DocumentRepository;
import demo.repository.TaskDocumentRepository;
import demo.repository.TaskRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/api/tasks")
public class DocumentsController {

    @Autowired
    private TaskDocumentRepository taskDocumentRepository;

    @Autowired
    private DocumentRepository documentRepository;

    @Autowired
    private TaskRepository taskRepository;

    @GetMapping("/{taskId}/documents")
    public ResponseEntity<List<Document>> getDocumentsForTask(@PathVariable Long taskId) throws IOException {
        List<Long> documentIds = taskDocumentRepository.findDocumentIdsByTaskId(taskId);
        List<Document> documents = documentRepository.findByIdIn(documentIds);

        List<Document> processedDocuments = new ArrayList<>();

        for (Document document : documents) {
            if (document.getFile() != null) {
                ResponseEntity<ByteArrayResource> response = downloadFile(document.getName());
                ByteArrayResource fileResource = response.getBody();
                assert fileResource != null;
                document.setFile(fileResource.getByteArray());
            }
            processedDocuments.add(document);
        }

        if (processedDocuments.isEmpty()) {
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } else {
            return new ResponseEntity<>(processedDocuments, HttpStatus.OK);
        }
    }


    @GetMapping("/{taskName}")
    public ResponseEntity<List<Document>> getDocumentsForTaskByName(@PathVariable String taskName) {
        Task task = taskRepository.findByName(taskName)
                .orElseThrow(() -> new MyResourceNotFoundException("Task not found with name: " + taskName));

        List<Long> documentIds = taskDocumentRepository.findDocumentIdsByTaskId(task.getId());
        List<Document> documents = documentRepository.findByIdIn(documentIds);

        if (documents.isEmpty()) {
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } else {
            return new ResponseEntity<>(documents, HttpStatus.OK);
        }
    }
    @PostMapping("/upload/{name}")
    public String handleFileUpload(@PathVariable String name, @RequestParam("file") MultipartFile file, RedirectAttributes redirectAttributes) {
        try {
            Document document = documentRepository.findByName(name).orElseThrow(() -> new RuntimeException("Document not found"));
            document.setFile(ImageUtil.compressImage(file.getBytes()));
            documentRepository.save(document);
            redirectAttributes.addFlashAttribute("message", "You successfully uploaded " + file.getOriginalFilename() + "!");
        } catch (IOException e) {
            e.printStackTrace();
            redirectAttributes.addFlashAttribute("message", "Failed to upload " + file.getOriginalFilename() + " => " + e.getMessage());
        }
        return "redirect:/";
    }

    @GetMapping("/download/{name}")
    public ResponseEntity<ByteArrayResource> downloadFile(@PathVariable String name) {
        Document document = documentRepository.findByName(name).orElseThrow(() -> new RuntimeException("Document not found"));

        byte[] decompressedFile = ImageUtil.decompressImage(document.getFile());

        return ResponseEntity.ok()
                .contentType(MediaType.parseMediaType("application/octet-stream"))
                .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\"" + document.getName() + ".png\"")
                .body(new ByteArrayResource(decompressedFile));
    }
}