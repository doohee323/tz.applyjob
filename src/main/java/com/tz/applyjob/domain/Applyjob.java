package com.tz.applyjob.domain;
import javax.persistence.Column;

import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

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
    @Column(name="url", length=1000)
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
