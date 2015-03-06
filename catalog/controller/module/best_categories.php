<?php
class ControllerModuleBestCategories extends Controller {
    public function index($setting)
    {
        $this->load->language('module/best_categories');

        $this->load->model('catalog/category');
        $this->load->model('tool/image');
        $categories = $this->model_catalog_category->getCategories(0);
        $data = array();
        if ($categories) {
            foreach ($categories as $category) {
                switch ($category['meta_title']) {
                    case 'category_bag' :
                        $category['href'] = $this->url->link('product/category', 'path=' . $category['category_id']);
                        $category['image'] = $this->model_tool_image->resize($category['image'], 200, 300);
                        $data['category_bag'] = $category;
                        break;
                    case 'category_men' :
                        $category['href'] = $this->url->link('product/category', 'path=' . $category['category_id']);
                        $category['image'] = $this->model_tool_image->resize($category['image'], 150, 100);
                        $data['category_men'] = $category;
                        break;
                    case 'category_women' :
                        $category['href'] = $this->url->link('product/category', 'path=' . $category['category_id']);
                        $category['image'] = $this->model_tool_image->resize($category['image'], 150, 100);
                        $data['category_women'] = $category;
                        break;
                    case 'category_other' :
                        $category['href'] = $this->url->link('product/category', 'path=' . $category['category_id']);
                        $category['image'] = $this->model_tool_image->resize($category['image'], 200, 300);
                        $data['category_other'] = $category;
                        break;
                }
            }

            if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/best_categories.tpl')) {
                return $this->load->view($this->config->get('config_template') . '/template/module/best_categories.tpl', $data);
            } else {
                return $this->load->view('default/template/module/best_categories.tpl', $data);
            }
        }
    }
}