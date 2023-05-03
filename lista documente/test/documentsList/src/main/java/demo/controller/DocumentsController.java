package demo.controller;

import demo.model.Document;
import demo.model.Task;
import demo.repository.DocumentRepository;
import demo.repository.TaskDocumentRepository;
import demo.repository.TaskRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

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
    public ResponseEntity<List<Document>> getDocumentsForTask(@PathVariable Long taskId) {
        List<Long> documentIds = taskDocumentRepository.findDocumentIdsByTaskId(taskId);
        List<Document> documents = documentRepository.findByIdIn(documentIds);

        if (documents.isEmpty()) {
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } else {
            return new ResponseEntity<>(documents, HttpStatus.OK);
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
}
