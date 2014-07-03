.class final Lcom/nextpeer/android/gb$ac;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/gb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ac"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/nextpeer/android/dp;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Landroid/view/LayoutInflater;

.field final synthetic b:Lcom/nextpeer/android/gb;


# direct methods
.method public constructor <init>(Lcom/nextpeer/android/gb;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/nextpeer/android/dp;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nextpeer/android/gb$ac;->b:Lcom/nextpeer/android/gb;

    sget v0, Lcom/nextpeer/android/R$layout;->np__layout_listitem_tournament_loading_friends_peer:I

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/nextpeer/android/gb$ac;->a:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    if-nez p2, :cond_0

    new-instance v1, Lcom/nextpeer/android/gb$ad;

    invoke-direct {v1, v5}, Lcom/nextpeer/android/gb$ad;-><init>(B)V

    iget-object v0, p0, Lcom/nextpeer/android/gb$ac;->a:Landroid/view/LayoutInflater;

    sget v2, Lcom/nextpeer/android/R$layout;->np__layout_listitem_tournament_loading_friends_peer:I

    invoke-virtual {v0, v2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    sget v0, Lcom/nextpeer/android/R$id;->np__tournament_loading_friends_peer_thumbnail:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/nextpeer/android/gb$ad;->a:Landroid/widget/ImageView;

    sget v0, Lcom/nextpeer/android/R$id;->np__tournament_loading_friends_peer_text_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/nextpeer/android/gb$ad;->b:Landroid/widget/TextView;

    sget v0, Lcom/nextpeer/android/R$id;->np__tournament_loading_friends_online_presence:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/nextpeer/android/gb$ad;->c:Landroid/widget/ImageView;

    sget v0, Lcom/nextpeer/android/R$id;->np__tournament_loading_friends_away_presence:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/nextpeer/android/gb$ad;->d:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/nextpeer/android/gb$ac;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dp;

    iget-object v2, v1, Lcom/nextpeer/android/gb$ad;->b:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/nextpeer/android/dp;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/nextpeer/android/dp;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/nextpeer/android/gb$ad;->a:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/nextpeer/android/dp;->c:Ljava/lang/String;

    sget v4, Lcom/nextpeer/android/R$drawable;->np__ic_thumbnail_place_holder:I

    invoke-static {v2, v3, v4}, Lcom/b/a/aq;->a(Landroid/widget/ImageView;Ljava/lang/String;I)V

    :goto_1
    iget-object v2, p0, Lcom/nextpeer/android/gb$ac;->b:Lcom/nextpeer/android/gb;

    invoke-static {v2}, Lcom/nextpeer/android/gb;->b(Lcom/nextpeer/android/gb;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nextpeer/android/dp;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/nextpeer/android/gb$ad;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v1, Lcom/nextpeer/android/gb$ad;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/gb$ad;

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lcom/nextpeer/android/gb$ad;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_2
    iget-object v0, v1, Lcom/nextpeer/android/gb$ad;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v1, Lcom/nextpeer/android/gb$ad;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method
