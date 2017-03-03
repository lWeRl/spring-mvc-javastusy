package org.lwerl.mvcjavastudy.mvc.file;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

/**
 * Created by lWeRl on 03.03.2017.
 */
@Controller
public class FileUploadController {

    @RequestMapping(value = "/uploadFile", method = RequestMethod.POST)

    @ResponseBody
    public String handleFileUploader(@RequestParam("file") MultipartFile file) {
        if (!file.isEmpty()) {
            try {
                byte[] fileBytes = file.getBytes();
                String rootPath = "G:\\1Project\\JavaStudy\\spring mvc\\upload";
                System.out.println("Server rootPath: " + rootPath);
                System.out.println("File original name: " + file.getOriginalFilename());
                System.out.println("File content type: " + file.getContentType());

                File newFile = new File(rootPath + File.separator + file.getOriginalFilename());
                BufferedOutputStream out = new BufferedOutputStream(new FileOutputStream(newFile));
                out.write(fileBytes);
                out.close();
                System.out.println("File is saved under: " + rootPath + File.separator + file.getOriginalFilename());
                return "File is saved under: " + rootPath + File.separator + file.getOriginalFilename();
            } catch (IOException e) {
                e.printStackTrace();
                return "File upload is failed: " + e.getMessage();
            }
        } else return "File upload is failed: File is empty";
    }
}