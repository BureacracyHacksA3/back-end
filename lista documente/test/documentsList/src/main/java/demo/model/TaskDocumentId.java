package demo.model;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;
import lombok.Data;

import java.io.Serializable;
import java.util.Objects;

@Data
@Embeddable
public class TaskDocumentId implements Serializable {

    @Column(name = "task_id")
    private Long taskId;

    @Column(name = "document_id")
    private Long documentId;

    public TaskDocumentId() {
    }

    public TaskDocumentId(Long taskId, Long documentId) {
        this.taskId = taskId;
        this.documentId = documentId;
    }

    public Long getTaskId() {
        return taskId;
    }

    public void setTaskId(Long taskId) {
        this.taskId = taskId;
    }

    public Long getDocumentId() {
        return documentId;
    }

    public void setDocumentId(Long documentId) {
        this.documentId = documentId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof TaskDocumentId that)) return false;
        return Objects.equals(getTaskId(), that.getTaskId()) &&
                Objects.equals(getDocumentId(), that.getDocumentId());
    }

    @Override
    public int hashCode() {
        return Objects.hash(getTaskId(), getDocumentId());
    }
}
