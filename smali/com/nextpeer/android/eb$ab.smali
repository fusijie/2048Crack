.class final Lcom/nextpeer/android/eb$ab;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/eb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ab"
.end annotation


# instance fields
.field final synthetic a:Lcom/nextpeer/android/eb;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nextpeer/android/eb$aa;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:I

.field private e:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/nextpeer/android/eb;Landroid/content/Context;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/nextpeer/android/eb$aa;",
            ">;I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nextpeer/android/eb$ab;->a:Lcom/nextpeer/android/eb;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    if-nez p3, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nextpeer/android/eb$ab;->b:Ljava/util/List;

    :goto_0
    iput-object p2, p0, Lcom/nextpeer/android/eb$ab;->c:Landroid/content/Context;

    iput p4, p0, Lcom/nextpeer/android/eb$ab;->d:I

    iget-object v0, p0, Lcom/nextpeer/android/eb$ab;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nextpeer/android/R$drawable;->np__dialog_change_avatar_item_selected:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/eb$ab;->e:Landroid/graphics/drawable/Drawable;

    return-void

    :cond_0
    iput-object p3, p0, Lcom/nextpeer/android/eb$ab;->b:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/nextpeer/android/eb$ab;->d:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/nextpeer/android/eb$ab;->d:I

    return-void
.end method

.method public final b(I)Lcom/nextpeer/android/eb$aa;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/eb$ab;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/eb$aa;

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/eb$ab;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/nextpeer/android/eb$ab;->b(I)Lcom/nextpeer/android/eb$aa;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    invoke-virtual {p0, p1}, Lcom/nextpeer/android/eb$ab;->b(I)Lcom/nextpeer/android/eb$aa;

    move-result-object v0

    iget v0, v0, Lcom/nextpeer/android/eb$aa;->a:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/eb$ab;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/nextpeer/android/R$layout;->np__dialog_changeavatar_grid_adapter_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    sget v0, Lcom/nextpeer/android/R$id;->np__dialog_changeavatar_grid_item_thumbnail:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/nextpeer/android/eb$ab;->b(I)Lcom/nextpeer/android/eb$aa;

    move-result-object v1

    iget-object v1, v1, Lcom/nextpeer/android/eb$aa;->b:Ljava/lang/String;

    sget v2, Lcom/nextpeer/android/R$drawable;->np__ic_thumbnail_place_holder:I

    invoke-static {v0, v1, v2}, Lcom/b/a/aq;->a(Landroid/widget/ImageView;Ljava/lang/String;I)V

    sget v0, Lcom/nextpeer/android/R$id;->np__dialog_changeavatar_grid_item_container:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/nextpeer/android/eb$ab;->d:I

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lcom/nextpeer/android/eb$ab;->a:Lcom/nextpeer/android/eb;

    iget-object v1, p0, Lcom/nextpeer/android/eb$ab;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/nextpeer/android/eb;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-object p2

    :cond_1
    iget-object v1, p0, Lcom/nextpeer/android/eb$ab;->a:Lcom/nextpeer/android/eb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nextpeer/android/eb;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
