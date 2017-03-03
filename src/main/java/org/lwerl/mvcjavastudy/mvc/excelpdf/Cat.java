package org.lwerl.mvcjavastudy.mvc.excelpdf;

/**
 * Created by lWeRl on 03.03.2017.
 */
public class Cat {
    private String name;
    private int weight;
    private String Color;

    public Cat(String name, int weight, String color) {
        this.name = name;
        this.weight = weight;
        Color = color;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getWeight() {
        return weight;
    }

    public void setWeight(int weight) {
        this.weight = weight;
    }

    public String getColor() {
        return Color;
    }

    public void setColor(String color) {
        Color = color;
    }
}
