module MoviesHelper
    def sort_movies(label, column)
        order = (column == params[:column] && params[:order] == 'asc') ? 'desc' : 'asc'
        link_to(label, movies_path(column: column, order: order, class: "sortable"))
    end
end
