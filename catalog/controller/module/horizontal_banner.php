<?php
class ControllerModuleHorizontalBanner extends Controller {
    public function index($setting) {
        static $module = 0;

        $this->load->model('design/banner');
        $this->load->model('tool/image');

        $data['banners'] = array();

        $results = $this->model_design_banner->getBanner($setting['banner_id']);
        $bannerOrder = !empty($this->session->data['horizontal_banner_order']) ? $this->session->data['horizontal_banner_order'] : 0;
        foreach ($results as $key => $result) {
            if ($key == $bannerOrder && is_file(DIR_IMAGE . $result['image'])) {
                $data['banner'] = array(
                    'title' => $result['title'],
                    'link'  => $result['link'],
                    'image' => $this->model_tool_image->resize($result['image'], $setting['width'], $setting['height'])
                );
                if ($key == count($results) - 1) {
                    unset($this->session->data['horizontal_banner_order']);
                } else {
                    $this->session->data['horizontal_banner_order'] = $key + 1;
                    break;
                }
            }
        }

        $data['module'] = $module++;

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/horizontal_banner.tpl')) {
            return $this->load->view($this->config->get('config_template') . '/template/module/horizontal_banner.tpl', $data);
        } else {
            return $this->load->view('default/template/module/horizontal_banner.tpl', $data);
        }
    }
}