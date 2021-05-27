package org.obrii.mit.dp2021.toloshnyi.Domain;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)
public class Links {
    
    
    private Self self;

    public Links() {
    }
    
    

    @Override
    public String toString() {
        return "Links{" + "self=" + self + '}';
    }

    public Self getSelf() {
        return self;
    }

    public void setSelf(Self self) {
        this.self = self;
    }    
}
