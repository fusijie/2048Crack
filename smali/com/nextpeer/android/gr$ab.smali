.class final Lcom/nextpeer/android/gr$ab;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/gr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ab"
.end annotation


# instance fields
.field final a:Landroid/view/LayoutInflater;

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nextpeer/android/dm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/nextpeer/android/dm;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/nextpeer/android/gr$ab;->a:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/nextpeer/android/gr$ab;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/gr$ab;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/gr$ab;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    if-nez p2, :cond_0

    new-instance v1, Lcom/nextpeer/android/gr$ac;

    invoke-direct {v1, v3}, Lcom/nextpeer/android/gr$ac;-><init>(B)V

    iget-object v0, p0, Lcom/nextpeer/android/gr$ab;->a:Landroid/view/LayoutInflater;

    sget v2, Lcom/nextpeer/android/R$layout;->np__layout_listitem_tournament_selection:I

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    sget v0, Lcom/nextpeer/android/R$id;->np__tournament_selection_tournament_thumbnail:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/nextpeer/android/gr$ac;->a:Landroid/widget/ImageView;

    sget v0, Lcom/nextpeer/android/R$id;->np__tournament_selection_tournament_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/nextpeer/android/gr$ac;->b:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/nextpeer/android/gr$ab;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dm;

    iget-object v2, v1, Lcom/nextpeer/android/gr$ac;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/nextpeer/android/dm;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/b/a/aq;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v1, v1, Lcom/nextpeer/android/gr$ac;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/nextpeer/android/dm;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/gr$ac;

    move-object v1, v0

    goto :goto_0
.end method
