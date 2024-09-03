package com.test.gitpod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

        import java.util.List;



@RestController
@RequestMapping("/gitpod")
@Validated
public class GitpodTestController {


    @GetMapping("/test/{name}")
    public ResponseEntity<String> register(@Validated @PathVariable String name){
        String response = "Test " + name;
        System.out.println("Request: " + name);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

}
