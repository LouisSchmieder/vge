module vulkan

#include "vulkan/vulkan.h"

const (
	vk_khr_surface = 'VK_KHR_surface'
	vk_khr_win32_surface = 'VK_KHR_win32_surface'
	vk_api_version_1_0 = u32(1)
	vk_api_version_1_1 = make_version(1, 1, 0)
)

// VK_MAKE_VERSION implementation from
// https://www.khronos.org/registry/vulkan/specs/1.2-extensions/man/html/VK_MAKE_VERSION.html
pub fn make_version(major u32, minor u32, patch u32) u32 {
	return ((major << 22) | (minor) << 12 | (patch))
}

pub fn vk_api_version_1_0() u32 {
	return vk_api_version_1_0
}

pub fn vk_api_version_1_1() u32 {
	return vk_api_version_1_1
}

pub fn create_app_info(application_name string, p_next voidptr, application_version u32, engine_name string, engine_version u32, api_version u32) C.VkApplicationInfo {
	return C.VkApplicationInfo{
		sType: vk_structure_type_application_info
		pNext: p_next
		pApplicationName: charptr(application_name.str)
		applicationVersion: application_version
		pEngineName: charptr(engine_name.str)
		engineVersion: engine_version
		apiVersion: api_version
	}
}