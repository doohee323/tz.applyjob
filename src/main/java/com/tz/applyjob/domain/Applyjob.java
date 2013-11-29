package com.tz.applyjob.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Applyjob {

    /**
     */
    private String jobtitle;

    /**
     */
    private String company;

    /**
     */
    private String location;

    /**
     */
    private String dateposted;

    /**
     */
    private String visa;

    /**
     */
    private String tech;

    /**
     */
    private String etc;

    /**
     */
    private String possible;

    /**
     */
    private String favorite;

    /**
     */
    private String url;

    /**
     */
    private String pay;

    /**
     */
    private String contract;

    /**
     */
    private String immediate_yn;

    /**
     */
    private String cmmt;

    /**
     */
    private String regist_dt;
}
