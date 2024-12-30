/// @desc Pans the camera in a specified direction, pauses, and transitions to the next room.
/// @param pan_speed  - The speed of the camera pan.
/// @param direction  - The direction of the pan in degrees (0 = right, 90 = up, etc.).
/// @param new_room   - The room to transition to.

function camera_pan() {
    // Create a camera pan controller object
    var controller = instance_create_depth(0, 0, 0, oCamera);
    with (controller) {
        _speed = argument0;      // Pan speed
        _direction = argument1;  // Pan direction
        target_room = argument2; // Room to transition to
    }
}
