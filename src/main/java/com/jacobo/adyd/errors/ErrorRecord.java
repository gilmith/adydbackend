package com.jacobo.adyd.errors;

import lombok.Builder;


@Builder
public record ErrorRecord(String message, Integer code) {

}
