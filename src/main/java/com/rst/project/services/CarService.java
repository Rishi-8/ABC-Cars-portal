package com.rst.project.services;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rst.project.controller.CarController;
import com.rst.project.daos.CarRepository;
import com.rst.project.entities.Car;

import javax.transaction.Transactional;
import java.util.List;
import java.util.Optional;

@Service
@Transactional
public class CarService {
  
	private static final Logger logger = LoggerFactory.getLogger(CarController.class);

    @Autowired
    private CarRepository carRepository;

    public List<Car> getAllCars() {
        return carRepository.findAll();
    }

    public Optional<Car> findCarByModel(String Model) {
        return carRepository.findByModel(Model);
    }
//used for both update and Save Car
    public Car saveCar(Car car) {
        Car dbcar = car;
        if (car.getId() > 0) {
            Optional<Car>  tmpStore = carRepository.findById(car.getId());
            if(tmpStore.isPresent()) {
                dbcar = tmpStore.get(); // old object
                dbcar.setMake(car.getMake());
                dbcar.setModel(car.getModel());
                dbcar.setRegisteration(car.getRegisteration());
                dbcar.setPrice(car.getPrice());
            }
        }
        Car savedCar = carRepository.save(dbcar);
        return savedCar;
    }
    
    
	public Car get(Long id) {
		return carRepository.findById(id).get();
	}

	
	public void delete(Long id) {
		carRepository.deleteById(id);
	}
	
	public List<Car> search(String keyword) {
		return carRepository.search(keyword);
		}

}
