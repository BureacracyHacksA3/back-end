package demo.repository;

import demo.model.Document;
import demo.model.TaskDocumentId;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface DocumentRepository extends JpaRepository<Document, TaskDocumentId> {

    List<Document> findByIdIn(List<Long> documentIds);

    Optional<Document> findById(Long documentId);

    Optional<Document> findByName(String name);
}
