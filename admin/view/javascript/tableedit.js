
$(document).ready(function()
{
    $(".edit_tr").click(function()
    {
        var ID = $(this).attr('id');
        $("#keyword_" + ID).hide();
        $("#meta_keyword_" + ID).hide();
        $("#custom_title_" + ID).hide();
        $("#custom_h1_" + ID).hide();
        $("#custom_alt_" + ID).hide();
        $("#meta_description_" + ID).hide();
        $("#tags_" + ID).hide();
        $("#keyword_input_" + ID).show();
        $("#meta_keyword_input_" + ID).show();
        $("#custom_title_input_" + ID).show();
        $("#custom_h1_input_" + ID).show();
        $("#custom_alt_input_" + ID).show();
        $("#meta_description_input_" + ID).show();
        $("#tags_input_" + ID).show();
        $("#tips_custom_title_input_" + ID).show();
        $("#tips_meta_description_input_" + ID).show();
    }).change(function()
    {
        var ID = $(this).attr('id');

        var keyword = $("#keyword_input_" + ID).val();
        var meta_keyword = $("#meta_keyword_input_" + ID).val();
        var custom_title = $("#custom_title_input_" + ID).val();
        var custom_h1 = $("#custom_h1_input_" + ID).val();
        var custom_alt = $("#custom_alt_input_" + ID).val();
        var meta_description = $("#meta_description_input_" + ID).val();
        var tags = $("#tags_input_" + ID).val();
        var lang = $("#lang_input_" + ID).val();
        var dataString = 'id=' + encodeURIComponent(ID) + '&keyword=' + encodeURIComponent(keyword) + '&custom_title=' + encodeURIComponent(custom_title) + '&custom_h1=' + encodeURIComponent(custom_h1) + '&custom_alt=' + encodeURIComponent(custom_alt) + '&meta_keyword=' + encodeURIComponent(meta_keyword) + '&meta_description=' + encodeURIComponent(meta_description) + '&tags=' + encodeURIComponent(tags) + '&lang=' + encodeURIComponent(lang);
        $("#first_" + ID).html('<img src="view/stylesheet/load.gif" />'); // Loading image

//if(first.length>0&& last.length>0)
        {

            $.ajax({
                type: "POST",
                url: "index.php?route=catalog/seoedit&token=" + $("#token").val(),
                data: dataString,
                cache: false,
                success: function(html)
                {
                    $("#serp_keyword_input_" + ID).html(html);
                    $("#keyword_" + ID).html(html);
                    $("#meta_keyword_" + ID).html(meta_keyword);
                    $("#custom_title_" + ID).html(custom_title);
                    $("#custom_h1_" + ID).html(custom_h1);
                    $("#custom_alt_" + ID).html(custom_alt);
                    $("#meta_description_" + ID).html(meta_description);
                    $("#tags_" + ID).html(tags);
                }
            });
        }
//else
//{
//alert('Enter something.');
//}

    });

// Edit input box click action
    $(".editbox").mouseup(function()
    {
        return false
    });

// Outside click action
    $(document).mouseup(function()
    {
        $(".editbox").hide();
        $(".text").show();
    });
    $(".editbox").keyup(function()
    {
        var ID = $(this).attr('id');
        metaTitle = $("#" + ID).val();
        metaTitle.replace(/^\s+|\s+$/g, "").toString();

        if (ID.indexOf('description') >= 0) {
            if (metaTitle.length > 156) {
                metaTitle = metaTitle.substring(0, 156) + "...";
            }
        } else if (ID.indexOf('title') >= 0) {
            if (metaTitle.length > 70) {
                metaTitle = metaTitle.substring(0, 70) + "...";
            }

        }
        $("#count_" + ID).html(metaTitle.length);
        $("#serp_" + ID).html(metaTitle);

    });

    $("#custom_title").keyup(function()
    {
        metaTitle = $(this).val();
        metaTitle.replace(/^\s+|\s+$/g, "").toString();
        if (metaTitle.length > 70) {
            metaTitle = metaTitle.substring(0, 70) + "...";
        }
        console.log(metaTitle);
        $("#serp_custom_title_input").html(metaTitle);

    });
    $("#meta_description").keyup(function()
    {
        metaTitle = $(this).val();
        metaTitle.replace(/^\s+|\s+$/g, "").toString();
        if (metaTitle.length > 156) {
            metaTitle = metaTitle.substring(0, 156) + "...";
        }
        console.log(metaTitle);
        $("#serp_meta_description_input").html(metaTitle);

    });
    $("#keyword").keyup(function()
    {
        metaTitle = $(this).val();
        metaTitle.replace(/^\s+|\s+$/g, "").toString();

        console.log(metaTitle);
        $("#serp_keyword_input").html(metaTitle);

    });
    $("#meta_keyword").keyup(function()
    {
        keyword = $(this).val();

        keyword = keyword.replace(/^\s+|\s+$/g, "").toString();
        keyword = keyword.replace(/,/ig, "");
        keyword = keyword.split(" ");
//        console.log("keyword" + keyword);
        var serp_meta_description = $('#serp_meta_description_input').text();
        console.log("serp_meta_description " + serp_meta_description);
        for (var i = 0; i < keyword.length; i++) {
            var key = keyword[i];
            console.log("keyword " + key);
            serp_meta_description = serp_meta_description.replace(new RegExp(key, 'g'), "<b>" + key + "</b>");
        }
        console.log(serp_meta_description);
        $("#serp_meta_description_input").html(serp_meta_description);
    });
});
 