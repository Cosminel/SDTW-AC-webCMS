package eu.tuiasi.webcms.dm.enums;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonValue;

@JsonFormat(shape = JsonFormat.Shape.OBJECT)
public enum AppRoles {
    ADMIN("ADMIN"),
    EDITOR("EDITOR"),
    PUBLISHER("PUBLISHER");

    private String text;

    AppRoles(String text){
        this.text = text;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public static AppRoles fromId(final String text) {
        if (text != null) {
            for (AppRoles type : AppRoles.values()) {
                if (text.equalsIgnoreCase(type.text)) {
                    return type;
                }
            }
        }
        return null;
    }
}

