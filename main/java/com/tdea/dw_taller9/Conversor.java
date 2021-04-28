/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tdea.dw_taller9;

/**
 *
 * @author Andres
 */
public class Conversor 
{
    private static float valorMoneda = (float)3628.79;
    
    public static float convertir(float COP)
    {
        return COP/valorMoneda;
    }
}
