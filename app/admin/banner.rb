ActiveAdmin.register Banner do
  permit_params :name, :description, :active, :image
  menu label: "Banner principal carrocel"
 
    controller do
      # Este bloco permite que você customize a configuração do controller
      def index
        # Customize o título da página de índice (listagem)
        @page_title = "Banners carrocel"
        super
      end

      def show
        # Customize o título da página de exibição individual
        @page_title = "Detalhes do Banner"
        super
      end
    end

    index do
      
      selectable_column
      id_column
      column :name
      column :description
      column :active
      column :image do |banner|
        image_tag(banner.image, width: 200, height: 100) if banner.image.attached?
      end
      actions
    end

    show do
      attributes_table do
        row :id
        row :name
        row :description
        row :active
        row :image do |banner|
          image_tag(banner.image, width: 200, height: 100) if banner.image.attached?
        end
      end
      active_admin_comments
    end

    form do |f|
      f.inputs "Banner Principal" do
        f.input :name
        f.input :description
        f.input :active, as: :boolean
        f.input :image, as: :file, input_html: { onchange: "previewImage(this);" }
        div class: 'current-image' do
        end
        
        f.actions
        render partial: 'admin/shared/image_preview_script', locals: { selector: 'current-image' }
      end
  end
end