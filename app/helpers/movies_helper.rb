module MoviesHelper
    def sort_movies(label, column)
        order = (column == params[:column] && params[:order] == 'asc') ? 'desc' : 'asc'
        css_class = column == params[:column] ? "sorted-#{params[:order]}" : ""
        puts "css_class: #{css_class}"
        arrow = sort_arrow(column)
        link_to("#{label} #{arrow}".html_safe, movies_path(column: column, order: order), class: css_class)
    end

    def sort_arrow(column)
        column == params[:column] ?
            (params[:order] == 'asc' ? '▲' : '▼') : ''
      end
end
