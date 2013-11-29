// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.tz.applyjob.domain;

import com.tz.applyjob.domain.Applyjob;
import com.tz.applyjob.domain.ApplyjobDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.stereotype.Component;

privileged aspect ApplyjobDataOnDemand_Roo_DataOnDemand {
    
    declare @type: ApplyjobDataOnDemand: @Component;
    
    private Random ApplyjobDataOnDemand.rnd = new SecureRandom();
    
    private List<Applyjob> ApplyjobDataOnDemand.data;
    
    public Applyjob ApplyjobDataOnDemand.getNewTransientApplyjob(int index) {
        Applyjob obj = new Applyjob();
        setCmmt(obj, index);
        setCompany(obj, index);
        setContract(obj, index);
        setDateposted(obj, index);
        setEtc(obj, index);
        setFavorite(obj, index);
        setImmediate_yn(obj, index);
        setJobtitle(obj, index);
        setLocation(obj, index);
        setPay(obj, index);
        setPossible(obj, index);
        setRegist_dt(obj, index);
        setTech(obj, index);
        setUrl(obj, index);
        setVisa(obj, index);
        return obj;
    }
    
    public void ApplyjobDataOnDemand.setCmmt(Applyjob obj, int index) {
        String cmmt = "cmmt_" + index;
        obj.setCmmt(cmmt);
    }
    
    public void ApplyjobDataOnDemand.setCompany(Applyjob obj, int index) {
        String company = "company_" + index;
        obj.setCompany(company);
    }
    
    public void ApplyjobDataOnDemand.setContract(Applyjob obj, int index) {
        String contract = "contract_" + index;
        obj.setContract(contract);
    }
    
    public void ApplyjobDataOnDemand.setDateposted(Applyjob obj, int index) {
        String dateposted = "dateposted_" + index;
        obj.setDateposted(dateposted);
    }
    
    public void ApplyjobDataOnDemand.setEtc(Applyjob obj, int index) {
        String etc = "etc_" + index;
        obj.setEtc(etc);
    }
    
    public void ApplyjobDataOnDemand.setFavorite(Applyjob obj, int index) {
        String favorite = "favorite_" + index;
        obj.setFavorite(favorite);
    }
    
    public void ApplyjobDataOnDemand.setImmediate_yn(Applyjob obj, int index) {
        String immediate_yn = "immediate_yn_" + index;
        obj.setImmediate_yn(immediate_yn);
    }
    
    public void ApplyjobDataOnDemand.setJobtitle(Applyjob obj, int index) {
        String jobtitle = "jobtitle_" + index;
        obj.setJobtitle(jobtitle);
    }
    
    public void ApplyjobDataOnDemand.setLocation(Applyjob obj, int index) {
        String location = "location_" + index;
        obj.setLocation(location);
    }
    
    public void ApplyjobDataOnDemand.setPay(Applyjob obj, int index) {
        String pay = "pay_" + index;
        obj.setPay(pay);
    }
    
    public void ApplyjobDataOnDemand.setPossible(Applyjob obj, int index) {
        String possible = "possible_" + index;
        obj.setPossible(possible);
    }
    
    public void ApplyjobDataOnDemand.setRegist_dt(Applyjob obj, int index) {
        String regist_dt = "regist_dt_" + index;
        obj.setRegist_dt(regist_dt);
    }
    
    public void ApplyjobDataOnDemand.setTech(Applyjob obj, int index) {
        String tech = "tech_" + index;
        obj.setTech(tech);
    }
    
    public void ApplyjobDataOnDemand.setUrl(Applyjob obj, int index) {
        String url = "url_" + index;
        if (url.length() > 1000) {
            url = url.substring(0, 1000);
        }
        obj.setUrl(url);
    }
    
    public void ApplyjobDataOnDemand.setVisa(Applyjob obj, int index) {
        String visa = "visa_" + index;
        obj.setVisa(visa);
    }
    
    public Applyjob ApplyjobDataOnDemand.getSpecificApplyjob(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Applyjob obj = data.get(index);
        Long id = obj.getId();
        return Applyjob.findApplyjob(id);
    }
    
    public Applyjob ApplyjobDataOnDemand.getRandomApplyjob() {
        init();
        Applyjob obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return Applyjob.findApplyjob(id);
    }
    
    public boolean ApplyjobDataOnDemand.modifyApplyjob(Applyjob obj) {
        return false;
    }
    
    public void ApplyjobDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = Applyjob.findApplyjobEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Applyjob' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Applyjob>();
        for (int i = 0; i < 10; i++) {
            Applyjob obj = getNewTransientApplyjob(i);
            try {
                obj.persist();
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            obj.flush();
            data.add(obj);
        }
    }
    
}
