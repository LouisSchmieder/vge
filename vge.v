module main

import vulkan

fn main() {
	vulkan.create_app_info('Test', voidptr(0), vulkan.make_version(0, 0, 2), 'Test Engine', vulkan.make_version(0, 0, 1), vulkan.vk_api_version_1_1())
}