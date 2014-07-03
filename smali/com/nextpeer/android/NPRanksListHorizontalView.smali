.class public final Lcom/nextpeer/android/NPRanksListHorizontalView;
.super Lcom/nextpeer/android/NPRanksListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nextpeer/android/NPRanksListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/graphics/Bitmap;IZ)Lcom/nextpeer/android/NPRankTileView;
    .locals 2

    new-instance v0, Lcom/nextpeer/android/NPRankTileHorizontalView;

    invoke-virtual {p0}, Lcom/nextpeer/android/NPRanksListHorizontalView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/nextpeer/android/NPRankTileHorizontalView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;IZ)V

    return-object v0
.end method

.method protected final a()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/NPRanksListHorizontalView;->setOrientation(I)V

    return-void
.end method

.method protected final a(Lcom/nextpeer/android/NPRankTileView;Lcom/nextpeer/android/NPRankTileView;)V
    .locals 2

    invoke-static {p1}, Lcom/d/a/aa;->a(Landroid/view/View;)F

    move-result v0

    invoke-static {p2}, Lcom/d/a/aa;->a(Landroid/view/View;)F

    move-result v1

    invoke-static {p1, v1}, Lcom/d/a/aa;->a(Landroid/view/View;F)V

    invoke-static {p2, v0}, Lcom/d/a/aa;->a(Landroid/view/View;F)V

    return-void
.end method

.method protected final b()Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/nextpeer/android/NPRanksListHorizontalView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v2, Lcom/nextpeer/android/R$dimen;->np__ranks_display_list_avatar_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v1, v3, v3, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    return-object v1
.end method
