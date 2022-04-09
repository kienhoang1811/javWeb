/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.SpringDemo.controllers;

import java.util.List;
import javax.persistence.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Kien Mason
 */
@Controller
public class BaseControler {

    @RequestMapping("/")
    public String index() {

        return "index";
    }
}
