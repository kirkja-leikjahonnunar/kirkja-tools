import os
import bpy

#---------------------
# Just messing around.
#---------------------
#bpy.data.objects["mecha_voidling"]

#for obj in bpy.context.selected_objects:
#    print("Hi: ", obj.name)
#    bpy.ops.export_scene.gltf(
#        filepath = '/home/unblinky/Kirkja/repos/kirkja-assets/' + obj.name,
#        use_selection = True)


#----------------------------------------
# Tutorial on Blender operator scripting.
#----------------------------------------
class MESH_OT_monkey_grid(bpy.types.Operator):
    """A barrel full!"""
    bl_idname = "mesh.monkey_grid"
    bl_label = "Monkey Grid"
    
    count: bpy.props.IntProperty(name = "Count", description = "How many monkeys?")
    size: bpy.props.FloatProperty(name = "Size", description = "How big are we?")
    distance: bpy.props.FloatProperty(name = "Distance", description = "How far apart?")
    
    def execute(self, context):
        for i in range(self.count):
            bpy.ops.mesh.primitive_monkey_add(size = self.size, location = (i * self.distance, 0, 0))
        
                
        return {'FINISHED'}
    
#        return {'CANCELED'}
    
#    def invoke():

#        pass
#    
#    def modal():
#        pass
    


class VIEW3D_PT_gltf_export(bpy.types.Panel):
    bl_space_type = 'VIEW_3D'
    bl_region_type = 'UI'
    bl_category = "Export"
    bl_label = "Doit!"
    
    def draw(self, context):
        pass
    
    print("I see you!")
    print(os.getcwd())
    
    
def register():
    bpy.utils.register_class(MESH_OT_monkey_grid)
#    bpy.utils.register_class(VIEW3D_PT_gltf_export)
    
    
def unregister():
    bpy.utils.unregister_class(MESH_OT_monkey_grid)
#    bpy.utils.unregister_class(VIEW3D_PT_gltf_export)

if __name__ == '__main__':
    register()
    
    
    
    
#    bpy.ops.export_scene.gltf(
#        filepath='',
#        check_existing=True,
#        export_format='GLB',
#        ui_tab='GENERAL',
#        export_copyright='',
#        export_image_format='AUTO',
#        export_texture_dir='',
#        export_keep_originals=False,
#        export_texcoords=True,
#        export_normals=True,
#        export_draco_mesh_compression_enable=False,
#        export_draco_mesh_compression_level=6,
#        export_draco_position_quantization=14,
#        export_draco_normal_quantization=10,
#        export_draco_texcoord_quantization=12,
#        export_draco_color_quantization=10,
#        export_draco_generic_quantization=12,
#        export_tangents=False,
#        export_materials='EXPORT',
#        export_colors=True,
#        use_mesh_edges=False,
#        use_mesh_vertices=False,
#        export_cameras=False,
#        use_selection=False,
#        use_visible=False,
#        use_renderable=False,
#        use_active_collection=False,
#        export_extras=False,
#        export_yup=True,
#        export_apply=False,
#        export_animations=True,
#        export_frame_range=True,
#        export_frame_step=1,
#        export_force_sampling=True,
#        export_nla_strips=True,
#        export_def_bones=False,
#        optimize_animation_size=True,
#        export_current_frame=False,
#        export_skins=True,
#        export_all_influences=False,
#        export_morph=True,
#        export_morph_normal=True,
#        export_morph_tangent=False,
#        export_lights=False,
#        export_displacement=False,
#        will_save_settings=False,
#        filter_glob='*.glb;*.gltf')