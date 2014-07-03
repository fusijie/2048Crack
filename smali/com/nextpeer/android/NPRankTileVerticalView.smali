.class public final Lcom/nextpeer/android/NPRankTileVerticalView;
.super Lcom/nextpeer/android/NPRankTileView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;IZ)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nextpeer/android/NPRankTileView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;IZ)V

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/nextpeer/android/R$layout;->np__rank_tile_vertical:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0, p2}, Lcom/nextpeer/android/NPRankTileVerticalView;->a(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p3}, Lcom/nextpeer/android/NPRankTileVerticalView;->a(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    sget v0, Lcom/nextpeer/android/R$id;->np__rank_tile_vertical_list_image_view:I

    return v0
.end method

.method public final b()I
    .locals 1

    sget v0, Lcom/nextpeer/android/R$id;->np__rank_tile_vertical_list_player_rank:I

    return v0
.end method

.method public final c()I
    .locals 1

    sget v0, Lcom/nextpeer/android/R$id;->np__rank_tile_vertical_list_image_view_border:I

    return v0
.end method
