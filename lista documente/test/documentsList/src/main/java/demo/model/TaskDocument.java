package demo.model;

import jakarta.persistence.*;

@Entity
@Table(name = "task_documents")
public class TaskDocument {

    @EmbeddedId
    private TaskDocumentId id;

    @ManyToOne(fetch = FetchType.LAZY)
    @MapsId("task_id")
    private Task task;

    @ManyToOne(fetch = FetchType.LAZY)
    @MapsId("document_id")
    private Document document;

    public TaskDocument() {
    }

    public TaskDocument(Task task, Document document) {
        this.task = task;
        this.document = document;
        this.id = new TaskDocumentId(task.getId(), document.getId());
    }

    public TaskDocumentId getId() {
        return id;
    }

    public void setId(TaskDocumentId id) {
        this.id = id;
    }

    public Task getTask() {
        return task;
    }

    public void setTask(Task task) {
        this.task = task;
    }

    public Document getDocument() {
        return document;
    }

    public void setDocument(Document document) {
        this.document = document;
    }
}
