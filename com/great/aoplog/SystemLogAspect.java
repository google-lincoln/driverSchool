package com.great.aoplog;


import java.lang.reflect.Method;
import java.util.Date;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.core.Ordered;
import org.springframework.stereotype.Component;

import com.great.javabean.SYSTEMLOG;
import com.great.mapper.FRIENDLINKMapper;
import com.great.mapper.SYSTEMLOGMapper;


/**
 * @author zx
 * @desc �е��� 
 */

@Aspect
@Component
public class SystemLogAspect {

	@Resource
	private SYSTEMLOGMapper mapper;
    //ע��Service���ڰ���־�������ݿ�  
//    @Resource  //��������resourceע��
//    private SystemLogService systemLogService;  
    
    
  //�����zxtestҪ��log4j.properties�������һ�£�����д�����ļ���
	private static Logger logger = Logger.getLogger("zxtest");  
    
    //Controller���е�  
    @Pointcut("@annotation(com.great.aoplog.SystemControllerLog)")  
    public  void controllerAspect() {  
    }  
    
    /** 
     * ǰ��֪ͨ ��������Controller���¼�û��Ĳ��� 
     * 
     * @param joinPoint �е� 
     */ 
    @Before("controllerAspect()")
    public void doBefore(JoinPoint joinPoint) {
        System.out.println("==========ִ��controllerǰ��֪ͨ===============");
        
        if(logger.isInfoEnabled()){
            logger.info("before " + joinPoint);
        }
    }    
    
    //����controller����֪ͨ,ʹ���ڷ���aspect()��ע��������
//      @Around("controllerAspect()")
//      public void around(JoinPoint joinPoint){
//          System.out.println("==========��ʼִ��controller����֪ͨ===============");
//          long start = System.currentTimeMillis();
//          
//          String methodName = joinPoint.getSignature().getName();
//          
//          try {
//              ((ProceedingJoinPoint) joinPoint).proceed();
//              long end = System.currentTimeMillis();
//              if(logger.isInfoEnabled()){
//                  logger.info("around " + joinPoint + "\tUse time : " + (end - start) + " ms!");
//              }
//              System.out.println("==========����ִ��controller����֪ͨ===============");
//          } catch (Throwable e) {
//        	  System.out.println("����֪ͨ�е��쳣--------------------------------"+methodName+"-------"+e.getMessage());
//              long end = System.currentTimeMillis();
//              if(logger.isInfoEnabled()){
//                  logger.info("around " + joinPoint + "\tUse time : " + (end - start) + " ms with exception : " + e.getMessage());
//              }
//          }
//      }
//    
    /** 
     * ����֪ͨ ��������Controller���¼�û��Ĳ��� 
     * 
     * @param joinPoint �е� 
     */  
    @After("controllerAspect()")  
    public  void after(JoinPoint joinPoint){  
  
       /* HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();  
        HttpSession session = request.getSession();  */
        //��ȡsession�е��û�  
       // User user = (User) session.getAttribute("user");  
        //�����IP  
        //String ip = request.getRemoteAddr();
         try {  
            
            String targetName = joinPoint.getTarget().getClass().getName();  
            String methodName = joinPoint.getSignature().getName();  
            Object[] arguments = joinPoint.getArgs();  
            Class targetClass = Class.forName(targetName);  
            Method[] methods = targetClass.getMethods();
            String operationType = "";
             for (Method method : methods) {  
                 if (method.getName().equals(methodName)) {  
                    Class[] clazzs = method.getParameterTypes();  
                     if (clazzs.length == arguments.length) {  
                         operationType = method.getAnnotation(SystemControllerLog.class).description();
                         break;  
                    }  
                }  
            }
            //*========����̨���=========*//  
            System.out.println("=====controller����֪ͨ��ʼ=====");  
            System.out.println("���󷽷�:" +operationType);  
            System.out.println("������:manager");  
            //*========���ݿ���־=========*//  
            SYSTEMLOG log = new SYSTEMLOG();  
            log.setMethod(operationType);  
            log.setLogType((long)0);  
            log.setExceptioncode( "");  
            log.setExceptionDetail( "");  
            log.setParams( "");  
            log.setCreateBy("manager");  
            log.setCreateDate(new Date(System.currentTimeMillis()));  
            //�������ݿ�  
            mapper.insert(log);  
            System.out.println(mapper);
            System.out.println("=====controller����֪ͨ����=====");  
        }  catch (Exception e) {  
            //��¼�����쳣��־  
        	e.printStackTrace();
            logger.error("==����֪ͨ�쳣==");  
            logger.error("�쳣��Ϣ:{}------"+ e.getMessage());  
            
            
        }  
    } 
    
    //���ú��÷���֪ͨ,ʹ���ڷ���aspect()��ע��������
      @AfterReturning("controllerAspect()")
      public void afterReturn(JoinPoint joinPoint){
          System.out.println("=====ִ��controller���÷���֪ͨ=====----");  
              if(logger.isInfoEnabled()){
                  logger.info("afterReturn " + joinPoint);
              }
      }
    
    /** 
     * �쳣֪ͨ �������ؼ�¼�쳣��־ 
     * 
     * @param joinPoint 
     * @param e 
     */ 
     @AfterThrowing(pointcut = "controllerAspect()", throwing="e")  
     public  void doAfterThrowing(JoinPoint joinPoint, Throwable e) throws Throwable{  
        /*HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();  
        HttpSession session = request.getSession();  
        //��ȡsession�е��û�  
        User user = (User) session.getAttribute(WebConstants.CURRENT_USER);  
        //��ȡ����ip  
        String ip = request.getRemoteAddr(); */ 
        //��ȡ�û����󷽷��Ĳ��������л�ΪJSON��ʽ�ַ���  
        System.out.println("�쳣֪ͨ��ʼ------------------------------------------");
        
        String params = "";  
         if (joinPoint.getArgs() !=  null && joinPoint.getArgs().length > 0) {  
             for ( int i = 0; i < joinPoint.getArgs().length; i++) {  
//                params += JsonUtil.getJsonStr(joinPoint.getArgs()[i]) + ";";  
            	 params += joinPoint.getArgs()[i] + ";"; 
            }  
        }  
         try {  
             
             String targetName = joinPoint.getTarget().getClass().getName();  
             String methodName = joinPoint.getSignature().getName();  
             Object[] arguments = joinPoint.getArgs();  
             Class targetClass = Class.forName(targetName);  
             Method[] methods = targetClass.getMethods();
             String operationType = "";
              for (Method method : methods) {  
                  if (method.getName().equals(methodName)) {  
                     Class[] clazzs = method.getParameterTypes();  
                      if (clazzs.length == arguments.length) {  
                          operationType = method.getAnnotation(SystemControllerLog.class).description();
                          break;  
                     }  
                 }  
             }
             /*========����̨���=========*/  
            System.out.println("=====�쳣֪ͨ��ʼ=====");  
            System.out.println("�쳣����:" + e.getClass().getName());  
            System.out.println("�쳣��Ϣ:" + e.getMessage());  
            System.out.println("�쳣����:" + (joinPoint.getTarget().getClass().getName() + "." + joinPoint.getSignature().getName() + "()")+"."+operationType);  
            System.out.println("������:");  
            System.out.println("�������:" + params);  
               /*==========���ݿ���־=========*/  
            SYSTEMLOG log = new SYSTEMLOG();
            log.setExceptioncode(e.getClass().getName());  
            log.setLogType((long)1);  
            log.setExceptionDetail(e.getMessage());  
            log.setMethod(operationType);  
            log.setParams(params);  
            log.setCreateBy("manager");  
            log.setCreateDate(new Date(System.currentTimeMillis()));  
            //�������ݿ�  
            mapper.insert(log);  
           
            System.out.println("=====�쳣֪ͨ����=====");  
        }  catch (Exception ex) {  
            //��¼�����쳣��־  
            logger.error("==�쳣֪ͨ�쳣==");  
            logger.error("�쳣��Ϣ:{}------"+ ex.getMessage());
        }  
         /*==========��¼�����쳣��־==========*/  
//        logger.error("�쳣����:{}�쳣����:{}�쳣��Ϣ:{}����:{}-----"+joinPoint.getTarget().getClass().getName() + joinPoint.getSignature().getName(), e.getClass().getName(), e.getMessage(), params);  
  
    }

	public SYSTEMLOGMapper getMapper() {
		return mapper;
	}

	public void setMapper(SYSTEMLOGMapper mapper) {
		this.mapper = mapper;
	}

     
}