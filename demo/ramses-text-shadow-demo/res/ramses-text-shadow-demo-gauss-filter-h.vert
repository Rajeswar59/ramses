//  -------------------------------------------------------------------------
//  Copyright (C) 2018 BMW Car IT GmbH
//  -------------------------------------------------------------------------
//  This Source Code Form is subject to the terms of the Mozilla Public
//  License, v. 2.0. If a copy of the MPL was not distributed with this
//  file, You can obtain one at https://mozilla.org/MPL/2.0/.
//  -------------------------------------------------------------------------

#version 300 es

precision highp float;
precision highp int;

uniform highp mat4 mvpMatrix;

in vec2 a_position;

out vec2 v_position;

void main()
{
    v_position = a_position;
    gl_Position = mvpMatrix * vec4(a_position, 0.0, 1.0);
}
