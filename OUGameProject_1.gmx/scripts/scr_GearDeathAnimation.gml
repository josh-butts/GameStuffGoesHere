image_speed = 0.5;
sprite_index = spr_GearDeath;
if (image_index > image_number - 1)
{
    instance_destroy(obj_Player);
    instance_create(global.spawnx, global.spawny, obj_Player);
}
