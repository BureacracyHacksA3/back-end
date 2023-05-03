package demo.repository;

import demo.model.Document;
import demo.model.TaskDocumentId;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DocumentRepository extends JpaRepository<Document, TaskDocumentId> {

    List<Document> findByIdIn(List<Long> documentIds);
}
