.class final Lcom/nextpeer/android/ge$ac;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/ge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ac"
.end annotation


# instance fields
.field final a:Landroid/view/LayoutInflater;

.field final synthetic b:Lcom/nextpeer/android/ge;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/ge;)V
    .locals 2

    iput-object p1, p0, Lcom/nextpeer/android/ge$ac;->b:Lcom/nextpeer/android/ge;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-virtual {p1}, Lcom/nextpeer/android/ge;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/nextpeer/android/ge$ac;->a:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/ge$ac;->b:Lcom/nextpeer/android/ge;

    invoke-static {v0}, Lcom/nextpeer/android/ge;->b(Lcom/nextpeer/android/ge;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/ge$ac;->b:Lcom/nextpeer/android/ge;

    invoke-static {v0}, Lcom/nextpeer/android/ge;->b(Lcom/nextpeer/android/ge;)Ljava/util/List;

    move-result-object v0

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
    .locals 5

    const/4 v4, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/ge$ac;->a:Landroid/view/LayoutInflater;

    sget v1, Lcom/nextpeer/android/R$layout;->np__layout_listitem_tournament_loading_random_peer:I

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    sget v0, Lcom/nextpeer/android/R$id;->np__tournament_loading_random_peer_thumbnail:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/nextpeer/android/R$id;->np__tournament_loading_random_peer_text_name:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/nextpeer/android/ge$ac;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nextpeer/android/dp;

    iget-object v3, v2, Lcom/nextpeer/android/dp;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v2, Lcom/nextpeer/android/dp;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v2, Lcom/nextpeer/android/dp;->c:Ljava/lang/String;

    sget v2, Lcom/nextpeer/android/R$drawable;->np__ic_thumbnail_place_holder:I

    invoke-static {v0, v1, v2}, Lcom/b/a/aq;->a(Landroid/widget/ImageView;Ljava/lang/String;I)V

    :goto_0
    return-object p2

    :cond_1
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
