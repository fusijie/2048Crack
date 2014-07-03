.class public final Lcom/nextpeer/android/NPRanksSoloView;
.super Lcom/nextpeer/android/NPRanksView;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/nextpeer/android/NPRanksView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/nextpeer/android/NPRanksSoloView;->d:I

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/nextpeer/android/R$layout;->np__rank_solo:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/nextpeer/android/R$id;->np__rank_solo_image_view:I

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/NPRanksSoloView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nextpeer/android/NPRanksSoloView;->a:Landroid/widget/ImageView;

    sget v0, Lcom/nextpeer/android/R$id;->np__rank_solo_player_rank:I

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/NPRanksSoloView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nextpeer/android/NPRanksSoloView;->b:Landroid/widget/TextView;

    sget v0, Lcom/nextpeer/android/R$id;->np__rank_solo_total:I

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/NPRanksSoloView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nextpeer/android/NPRanksSoloView;->c:Landroid/widget/TextView;

    return-void
.end method

.method private a(I)V
    .locals 6

    iget v0, p0, Lcom/nextpeer/android/NPRanksSoloView;->d:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/nextpeer/android/NPRanksSoloView;->d:I

    invoke-virtual {p0}, Lcom/nextpeer/android/NPRanksSoloView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/NPRanksSoloView;->b:Landroid/widget/TextView;

    sget v2, Lcom/nextpeer/android/R$string;->np__ranks_display_rank_number:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/nextpeer/android/NPRanksSoloView;->d:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(IILjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0, p4}, Lcom/nextpeer/android/NPRanksSoloView;->a(I)V

    return-void
.end method

.method public final a(IILjava/util/List;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/nextpeer/android/NPRanksSoloView;->a:Landroid/widget/ImageView;

    sub-int v0, p4, p1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/nextpeer/android/NPRanksSoloView;->c:Landroid/widget/TextView;

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p4}, Lcom/nextpeer/android/NPRanksSoloView;->a(I)V

    return-void
.end method
