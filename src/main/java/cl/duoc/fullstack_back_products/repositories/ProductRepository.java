package cl.duoc.fullstack_back_products.repositories;

import cl.duoc.fullstack_back_products.models.ProductModel;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductRepository extends JpaRepository<ProductModel, Long> {
}
