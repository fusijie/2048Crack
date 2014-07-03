.class public abstract Lcom/nextpeer/android/NPRanksListView;
.super Lcom/nextpeer/android/NPRanksView;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nextpeer/android/NPRankTileView;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/nextpeer/android/NPRanksView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/NPRanksListView;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/nextpeer/android/NPRanksListView;->e:I

    return-void
.end method

.method private static a(Lcom/nextpeer/android/NPRankTileView;Lcom/nextpeer/android/NPRankTileView;IILandroid/graphics/Bitmap;)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/nextpeer/android/NPRankTileView;->a(I)V

    invoke-virtual {p1, p3}, Lcom/nextpeer/android/NPRankTileView;->a(I)V

    invoke-virtual {p1}, Lcom/nextpeer/android/NPRankTileView;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, p4, :cond_0

    invoke-virtual {p1, p4}, Lcom/nextpeer/android/NPRankTileView;->a(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/graphics/Bitmap;IZ)Lcom/nextpeer/android/NPRankTileView;
.end method

.method protected a()V
    .locals 0

    return-void
.end method

.method public final a(IILjava/util/List;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;I)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget v0, p0, Lcom/nextpeer/android/NPRanksListView;->e:I

    if-lez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/NPRanksListView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    iget v0, p0, Lcom/nextpeer/android/NPRanksListView;->b:I

    iget v2, p0, Lcom/nextpeer/android/NPRanksListView;->c:I

    sub-int v4, v0, v2

    new-instance v5, Ljava/util/ArrayList;

    add-int/lit8 v0, p2, -0x1

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    :goto_2
    if-lt v0, p2, :cond_4

    iget v0, p0, Lcom/nextpeer/android/NPRanksListView;->b:I

    if-eq p4, v0, :cond_2

    iget-object v0, p0, Lcom/nextpeer/android/NPRanksListView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/NPRankTileView;

    if-nez p4, :cond_6

    move v3, v1

    :goto_3
    iget-object v1, p0, Lcom/nextpeer/android/NPRanksListView;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nextpeer/android/NPRankTileView;

    if-eqz p4, :cond_1

    add-int v2, p1, p2

    add-int/lit8 v2, v2, -0x1

    if-eq p4, v2, :cond_1

    iget v2, p0, Lcom/nextpeer/android/NPRanksListView;->b:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/nextpeer/android/NPRanksListView;->b:I

    iget v6, p0, Lcom/nextpeer/android/NPRanksListView;->c:I

    iget v7, p0, Lcom/nextpeer/android/NPRanksListView;->d:I

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    if-ne v2, v6, :cond_9

    :cond_1
    add-int v6, p1, v4

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-static {v0, v1, p4, v6, v2}, Lcom/nextpeer/android/NPRanksListView;->a(Lcom/nextpeer/android/NPRankTileView;Lcom/nextpeer/android/NPRankTileView;IILandroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0, v1}, Lcom/nextpeer/android/NPRanksListView;->a(Lcom/nextpeer/android/NPRankTileView;Lcom/nextpeer/android/NPRankTileView;)V

    iget-object v2, p0, Lcom/nextpeer/android/NPRanksListView;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/nextpeer/android/NPRanksListView;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/nextpeer/android/NPRanksListView;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nextpeer/android/NPRanksListView;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    iput p4, p0, Lcom/nextpeer/android/NPRanksListView;->b:I

    iput p1, p0, Lcom/nextpeer/android/NPRanksListView;->c:I

    iput p2, p0, Lcom/nextpeer/android/NPRanksListView;->d:I

    goto/16 :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-static {}, Lcom/nextpeer/android/NPRankTileView;->f()Z

    goto/16 :goto_1

    :cond_4
    if-eq v0, v4, :cond_5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    add-int v1, p1, p2

    add-int/lit8 v1, v1, -0x1

    if-ne p4, v1, :cond_7

    add-int/lit8 v1, p2, -0x1

    move v3, v1

    goto :goto_3

    :cond_7
    iget v1, p0, Lcom/nextpeer/android/NPRanksListView;->b:I

    if-le p4, v1, :cond_8

    const/4 v1, 0x1

    :goto_6
    add-int/2addr v1, v4

    move v3, v1

    goto :goto_3

    :cond_8
    const/4 v1, -0x1

    goto :goto_6

    :cond_9
    add-int v4, p1, v3

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-static {v0, v1, p4, v4, v2}, Lcom/nextpeer/android/NPRanksListView;->a(Lcom/nextpeer/android/NPRankTileView;Lcom/nextpeer/android/NPRankTileView;IILandroid/graphics/Bitmap;)V

    goto :goto_4

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/nextpeer/android/NPRanksListView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nextpeer/android/NPRankTileView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {v1}, Lcom/nextpeer/android/NPRankTileView;->e()I

    move-result v4

    if-eq v3, v4, :cond_b

    invoke-virtual {v1, v3}, Lcom/nextpeer/android/NPRankTileView;->a(I)V

    :cond_b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lcom/nextpeer/android/NPRankTileView;->a(Landroid/graphics/Bitmap;)V

    goto :goto_5
.end method

.method public final a(IILjava/util/List;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, -0x2

    iget-object v0, p0, Lcom/nextpeer/android/NPRanksListView;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/NPRanksListView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_0
    invoke-virtual {p0}, Lcom/nextpeer/android/NPRanksListView;->a()V

    sget v0, Lcom/nextpeer/android/R$drawable;->np__notification_background:I

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/NPRanksListView;->setBackgroundResource(I)V

    iput p4, p0, Lcom/nextpeer/android/NPRanksListView;->b:I

    iput p1, p0, Lcom/nextpeer/android/NPRanksListView;->c:I

    iput p2, p0, Lcom/nextpeer/android/NPRanksListView;->d:I

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/nextpeer/android/NPRanksListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nextpeer/android/R$dimen;->np__ranks_display_list_border_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/nextpeer/android/NPRanksListView;->setPadding(IIII)V

    invoke-virtual {p0, v4}, Lcom/nextpeer/android/NPRanksListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/nextpeer/android/NPRanksListView;->b()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v5, v2

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/nextpeer/android/NPRanksListView;->a:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    add-int v7, p1, v5

    iget v1, p0, Lcom/nextpeer/android/NPRanksListView;->b:I

    if-ne v7, v1, :cond_2

    const/4 v1, 0x1

    :goto_2
    invoke-virtual {p0}, Lcom/nextpeer/android/NPRanksListView;->getContext()Landroid/content/Context;

    invoke-virtual {p0, v0, v7, v1}, Lcom/nextpeer/android/NPRanksListView;->a(Landroid/graphics/Bitmap;IZ)Lcom/nextpeer/android/NPRankTileView;

    move-result-object v1

    iget-object v0, p0, Lcom/nextpeer/android/NPRanksListView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, p2, -0x1

    if-ge v5, v0, :cond_3

    move-object v0, v3

    :goto_3
    invoke-virtual {v1, v0}, Lcom/nextpeer/android/NPRankTileView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v1}, Lcom/nextpeer/android/NPRanksListView;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    move-object v0, v4

    goto :goto_3
.end method

.method protected abstract a(Lcom/nextpeer/android/NPRankTileView;Lcom/nextpeer/android/NPRankTileView;)V
.end method

.method protected abstract b()Landroid/widget/LinearLayout$LayoutParams;
.end method
