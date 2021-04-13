module vulkan

struct C.VkApplicationInfo {
	sType int
	pNext voidptr
	pApplicationName charptr
	applicationVersion u32
	pEngineName charptr
	engineVersion u32
	apiVersion u32
}

struct C.VkInstanceCreateInfo {
	s_type int
	p_next voidptr
	flags u32
	p_application_info &C.VkApplicationInfo
	enabled_layered_counter u32
	pp_enabled_layer_names []charptr
	enabled_extension_count u32
	pp_enabled_extension_names []charptr
}

