package com.junit;

import org.junit.Before;
import org.junit.After;
import org.junit.Test;

import static org.junit.Assert.*;

public class TemperatureConverterTest {

    private TemperatureConverter converter;

    @Before
    public void setUp() {
        converter = new TemperatureConverter(); // Setup before each test
        System.out.println("Converter setup complete.");
    }

    @After
    public void tearDown() {
        converter = null; // Teardown after each test
        System.out.println("Converter teardown complete.");
    }

    @Test
    public void testCelsiusToFahrenheit() {
        // Arrange
        double celsius = 0.0;

        // Act
        double result = converter.celsiusToFahrenheit(celsius);

        // Assert
        assertEquals(32.0, result, 0.001);  // delta is for floating-point precision
    }

    @Test
    public void testFahrenheitToCelsius() {
        // Arrange
        double fahrenheit = 212.0;

        // Act
        double result = converter.fahrenheitToCelsius(fahrenheit);

        // Assert
        assertEquals(100.0, result, 0.001);
    }

    @Test
    public void testNegativeCelsiusConversion() {
        // Arrange
        double celsius = -40.0;

        // Act
        double result = converter.celsiusToFahrenheit(celsius);

        // Assert
        assertEquals(-40.0, result, 0.001); // -40°C = -40°F
    }
}
