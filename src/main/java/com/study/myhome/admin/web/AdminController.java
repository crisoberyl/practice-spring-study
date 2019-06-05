package com.study.myhome.admin.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {

  /**
   * 테스트 관리자 페이지
   *
   * @author 정명성
   * @create date : 2016. 10. 26.
   */
  @RequestMapping(value = "/admin/index.do")
  public String manageIndex() {

    return "admin/index.myhome";
  }
}
