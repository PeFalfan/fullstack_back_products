package cl.duoc.fullstack_back_products.service.impl;

import cl.duoc.fullstack_back_products.models.ProductModel;
import cl.duoc.fullstack_back_products.models.ResponseModel;
import cl.duoc.fullstack_back_products.repositories.ProductRepository;
import cl.duoc.fullstack_back_products.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductRepository productRepository;


    @Override
    public ResponseModel addProduct(ProductModel product) {
        try {
            ResponseModel responseModel = new ResponseModel();
            responseModel.setData(productRepository.save(product));
            responseModel.setError(null);
            responseModel.setMessageResponse("Exito al guardar producto");

            return responseModel;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public ResponseModel updateProduct(ProductModel product) {
        try {
            ResponseModel response = new ResponseModel();

            response.setData(productRepository.findById(product.getId())
                    .map(currentProduct -> {
                        currentProduct.setNombre(product.getNombre());
                        currentProduct.setTipo(product.getTipo());
                        currentProduct.setDescripcion(product.getDescripcion());
                        currentProduct.setPrecio(product.getPrecio());
                        currentProduct.setExistencias(product.getExistencias());
                        currentProduct.setImagen(product.getImagen());

                        return productRepository.save(currentProduct);
                    })
            );
            response.setError(null);
            response.setMessageResponse("Exito al actualizar producto");

            return response;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public ResponseModel deleteProduct(ProductModel product) {
        return null;
    }

    @Override
    public ResponseModel findProductById(int id) {
        return null;
    }

    @Override
    public ResponseModel findAllProducts() {
        try {
            ResponseModel responseModel = new ResponseModel();
            responseModel.setData(productRepository.findAll());
            responseModel.setError(null);
            responseModel.setMessageResponse("Exito al consultar los productos");

            return responseModel;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
