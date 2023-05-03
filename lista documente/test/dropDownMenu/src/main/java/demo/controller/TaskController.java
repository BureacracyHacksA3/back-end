package demo.controller;

import demo.model.Task;
import demo.repository.TaskRepository;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/tasks")
public class TaskController {

    @Autowired
    private TaskRepository taskRepository;

    @GetMapping("/tasks/{id}")
    public ResponseEntity<Task> getTaskById(@PathVariable(value = "id") Long taskId) {
        Task task = taskRepository.findById(Math.toIntExact(taskId))
                .orElseThrow(() -> new MyResourceNotFoundException("Task not found with id " + taskId));
        return ResponseEntity.ok().body(task);
    }

    @GetMapping("/{name}")
    public Task getTaskByName(@PathVariable String name) {
        return taskRepository.findByName(name)
                .orElseThrow(() -> new MyResourceNotFoundException("Task not found with name: " + name));
    }
    @GetMapping("/names")
    public List<String> getAllTaskNames() {
        return taskRepository.findAll()
                .stream()
                .map(Task::getName)
                .collect(java.util.stream.Collectors.toList());
    }
}
