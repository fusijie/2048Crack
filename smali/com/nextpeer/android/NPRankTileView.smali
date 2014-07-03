.class public abstract Lcom/nextpeer/android/NPRankTileView;
.super Landroid/widget/RelativeLayout;


# instance fields
.field protected a:Landroid/graphics/Bitmap;

.field protected b:I

.field protected c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;IZ)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput p3, p0, Lcom/nextpeer/android/NPRankTileView;->b:I

    iput-object p2, p0, Lcom/nextpeer/android/NPRankTileView;->a:Landroid/graphics/Bitmap;

    iput-boolean p4, p0, Lcom/nextpeer/android/NPRankTileView;->c:Z

    return-void
.end method

.method public static f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public abstract a()I
.end method

.method public final a(I)V
    .locals 6

    iput p1, p0, Lcom/nextpeer/android/NPRankTileView;->b:I

    invoke-virtual {p0}, Lcom/nextpeer/android/NPRankTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nextpeer/android/NPRankTileView;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/NPRankTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v2, Lcom/nextpeer/android/R$string;->np__ranks_display_rank_number:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v5, p1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    instance-of v2, v2, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_0

    packed-switch p1, :pswitch_data_0

    sget v2, Lcom/nextpeer/android/R$color;->np__current_matches_ribbon_grey:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_0
    return-void

    :pswitch_0
    sget v2, Lcom/nextpeer/android/R$color;->np__current_matches_ribbon_orange:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0

    :pswitch_1
    sget v2, Lcom/nextpeer/android/R$color;->np__current_matches_ribbon_blue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0

    :pswitch_2
    sget v2, Lcom/nextpeer/android/R$color;->np__current_matches_ribbon_purple:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 2

    iput-object p1, p0, Lcom/nextpeer/android/NPRankTileView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/nextpeer/android/NPRankTileView;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/NPRankTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/nextpeer/android/NPRankTileView;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/NPRankTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v0, p0, Lcom/nextpeer/android/NPRankTileView;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public abstract b()I
.end method

.method public abstract c()I
.end method

.method public final d()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/NPRankTileView;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/nextpeer/android/NPRankTileView;->b:I

    return v0
.end method
