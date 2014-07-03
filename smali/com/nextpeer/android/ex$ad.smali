.class final Lcom/nextpeer/android/ex$ad;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/ex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ad"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/nextpeer/android/av$ab;",
        ">;"
    }
.end annotation


# instance fields
.field protected final a:Landroid/view/LayoutInflater;

.field final synthetic b:Lcom/nextpeer/android/ex;


# direct methods
.method public constructor <init>(Lcom/nextpeer/android/ex;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/nextpeer/android/av$ab;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nextpeer/android/ex$ad;->b:Lcom/nextpeer/android/ex;

    sget v0, Lcom/nextpeer/android/R$layout;->np__layout_listitem_invite_all_fb_friends:I

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/nextpeer/android/ex$ad;->a:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    if-nez p2, :cond_0

    new-instance v1, Lcom/nextpeer/android/ex$ac;

    invoke-direct {v1, v3}, Lcom/nextpeer/android/ex$ac;-><init>(B)V

    iget-object v0, p0, Lcom/nextpeer/android/ex$ad;->a:Landroid/view/LayoutInflater;

    sget v2, Lcom/nextpeer/android/R$layout;->np__layout_listitem_invite_all_fb_friends:I

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    sget v0, Lcom/nextpeer/android/R$id;->np__invite_all_fb_friends_item_player_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/nextpeer/android/ex$ac;->b:Landroid/widget/TextView;

    sget v0, Lcom/nextpeer/android/R$id;->np__invite_all_fb_friends_item_thumbnail:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/nextpeer/android/ex$ac;->a:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/nextpeer/android/ex$ad;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/av$ab;

    iget-object v2, v1, Lcom/nextpeer/android/ex$ac;->b:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/nextpeer/android/av$ab;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v1, Lcom/nextpeer/android/ex$ac;->a:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/nextpeer/android/av$ab;->b:Ljava/lang/String;

    sget v2, Lcom/nextpeer/android/R$drawable;->np__ic_thumbnail_place_holder:I

    invoke-static {v1, v0, v2}, Lcom/b/a/aq;->a(Landroid/widget/ImageView;Ljava/lang/String;I)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/ex$ac;

    move-object v1, v0

    goto :goto_0
.end method
