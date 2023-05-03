package demo.repository;

import demo.model.TaskDocument;
import demo.model.TaskDocumentId;
import jdk.swing.interop.SwingInterOpUtils;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.http.converter.json.GsonBuilderUtils;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface TaskDocumentRepository extends JpaRepository<TaskDocument, TaskDocumentId> {
    @Query(value = "SELECT td.document_id FROM task_documents td WHERE td.task_id = :taskId",nativeQuery = true)
    List<Long> findDocumentIdsByTaskId(@Param("taskId") Long taskId);
}

