package com.tz.applyjob.web;
import com.tz.applyjob.domain.Applyjob;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/applyjobs")
@Controller
@RooWebScaffold(path = "applyjobs", formBackingObject = Applyjob.class)
public class ApplyjobController {
}
