varying vec2 v_vTexcoord;

void main() {
    vec2 uv = v_vTexcoord - vec2(0.5, 0.5);  // Center UV coordinates to [-0.5, 0.5]
    float dist = length(uv);  // Calculate distance from center
    float innerRing = smoothstep(0.2, 0.21, dist);  // Inner boundary of the ring
    float outerRing = smoothstep(0.21, 0.22, dist); // Outer boundary of the ring
    float ring = outerRing - innerRing; // Final ring shape based on distance
    
    // Output the ring's grayscale value (changing red channel intensity)
    gl_FragColor = vec4(ring, 0.5, 0.0, 1.0);  // Orange ring, modify alpha if needed
}