package com.example.calculatoramirhosein;

import org.apache.struts.action.ActionForm;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CalculatorAction extends Action {
    public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
        CalculatorForm calculatorForm = (CalculatorForm) form;
        int num1 = calculatorForm.getNumber1();
        int num2 = calculatorForm.getNumber2();
        String operation = calculatorForm.getOperation();
        int result = 0;

        switch (operation) {
            case "add":
                result = num1 + num2;
                break;
            case "subtract":
                result = num1 - num2;
                break;
            case "multiply":
                result = num1 * num2;
                break;
            case "divide":
                if (num2 != 0) {
                    result = num1 / num2;
                } else {
                    request.setAttribute("error", "Cannot divide by zero.");
                }
                break;
        }

        request.setAttribute("result", result);
        calculatorForm.setResult(result);
        return mapping.findForward("success");
    }
}
