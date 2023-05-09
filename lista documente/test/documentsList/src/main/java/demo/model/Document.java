package demo.model;

import jakarta.persistence.*;
import lombok.Data;
import org.springframework.boot.autoconfigure.SpringBootApplication;
@Data
@Entity
@Table(name = "documents")
public class Document {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "document_id")
    private Long id;
    @Column(name = "name")
    private String name;

    @Column(name = "description")
    private String description;
    @Column(name = "price")
    private String price;

    @Column(name = "institution_id")
    private Long institution_id;

    @Column(name = "path")
    private String path;

    @Lob
    @Column(name = "file")
    private byte[] file;
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public Long getInstitution_id() {
        return institution_id;
    }

    public void setInstitution_id(Long institution_id) {
        this.institution_id = institution_id;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public byte[] getFile() {
        return file;
    }

    public void setFile(byte[] file) {
        this.file = file;
    }
}
