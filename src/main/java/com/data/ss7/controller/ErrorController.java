package com.data.ss7.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class ErrorController {

    @RequestMapping("/error")
    public String handleError(HttpServletRequest request) {
        // Ở đây bạn có thể thêm logic phân biệt lỗi nếu cần
        return "error";
    }
}
