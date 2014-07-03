.class final Lcom/nextpeer/android/ex$ab;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/ex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ab"
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

    iput-object p1, p0, Lcom/nextpeer/android/ex$ab;->b:Lcom/nextpeer/android/ex;

    sget v0, Lcom/nextpeer/android/R$layout;->np__layout_listitem_invite_active_fb_friends:I

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/nextpeer/android/ex$ab;->a:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic a(Lcom/nextpeer/android/ex$ab;)Lcom/nextpeer/android/ex;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/ex$ab;->b:Lcom/nextpeer/android/ex;

    return-object v0
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    if-nez p2, :cond_0

    new-instance v1, Lcom/nextpeer/android/ex$aa;

    invoke-direct {v1, v5}, Lcom/nextpeer/android/ex$aa;-><init>(B)V

    iget-object v0, p0, Lcom/nextpeer/android/ex$ab;->a:Landroid/view/LayoutInflater;

    sget v2, Lcom/nextpeer/android/R$layout;->np__layout_listitem_invite_active_fb_friends:I

    invoke-virtual {v0, v2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    sget v0, Lcom/nextpeer/android/R$id;->np__invite_active_fb_friends_item_player_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/nextpeer/android/ex$aa;->b:Landroid/widget/TextView;

    sget v0, Lcom/nextpeer/android/R$id;->np__invite_active_fb_friends_item_thumbnail:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/nextpeer/android/ex$aa;->a:Landroid/widget/ImageView;

    sget v0, Lcom/nextpeer/android/R$id;->np__invite_active_fb_friends_item_add_button:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v1, Lcom/nextpeer/android/ex$aa;->c:Landroid/widget/ImageButton;

    sget v0, Lcom/nextpeer/android/R$id;->np__invite_active_fb_friends_item_invited_button:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v1, Lcom/nextpeer/android/ex$aa;->d:Landroid/widget/ImageButton;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/nextpeer/android/ex$ab;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/av$ab;

    iget-object v2, v1, Lcom/nextpeer/android/ex$aa;->c:Landroid/widget/ImageButton;

    sget v3, Lcom/nextpeer/android/R$id;->np__invite_fb_friends_item_tag:I

    invoke-virtual {v2, v3, v0}, Landroid/widget/ImageButton;->setTag(ILjava/lang/Object;)V

    iget-object v2, v1, Lcom/nextpeer/android/ex$aa;->c:Landroid/widget/ImageButton;

    sget v3, Lcom/nextpeer/android/R$id;->np__invite_fb_friends_list_button_tag:I

    iget-object v4, v1, Lcom/nextpeer/android/ex$aa;->d:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageButton;->setTag(ILjava/lang/Object;)V

    iget-object v2, v1, Lcom/nextpeer/android/ex$aa;->c:Landroid/widget/ImageButton;

    new-instance v3, Lcom/nextpeer/android/fj;

    invoke-direct {v3, p0}, Lcom/nextpeer/android/fj;-><init>(Lcom/nextpeer/android/ex$ab;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v1, Lcom/nextpeer/android/ex$aa;->d:Landroid/widget/ImageButton;

    sget v3, Lcom/nextpeer/android/R$id;->np__invite_fb_friends_item_tag:I

    invoke-virtual {v2, v3, v0}, Landroid/widget/ImageButton;->setTag(ILjava/lang/Object;)V

    iget-object v2, v1, Lcom/nextpeer/android/ex$aa;->d:Landroid/widget/ImageButton;

    sget v3, Lcom/nextpeer/android/R$id;->np__invite_fb_friends_list_button_tag:I

    iget-object v4, v1, Lcom/nextpeer/android/ex$aa;->c:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageButton;->setTag(ILjava/lang/Object;)V

    iget-object v2, v1, Lcom/nextpeer/android/ex$aa;->d:Landroid/widget/ImageButton;

    new-instance v3, Lcom/nextpeer/android/fk;

    invoke-direct {v3, p0}, Lcom/nextpeer/android/fk;-><init>(Lcom/nextpeer/android/ex$ab;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/nextpeer/android/ex$ab;->b:Lcom/nextpeer/android/ex;

    invoke-static {v2}, Lcom/nextpeer/android/ex;->b(Lcom/nextpeer/android/ex;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, v0, Lcom/nextpeer/android/av$ab;->d:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/nextpeer/android/ex$aa;->c:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v2, v1, Lcom/nextpeer/android/ex$aa;->d:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_1
    iget-object v2, v1, Lcom/nextpeer/android/ex$aa;->b:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/nextpeer/android/av$ab;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v1, Lcom/nextpeer/android/ex$aa;->a:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/nextpeer/android/av$ab;->b:Ljava/lang/String;

    sget v2, Lcom/nextpeer/android/R$drawable;->np__ic_thumbnail_place_holder:I

    invoke-static {v1, v0, v2}, Lcom/b/a/aq;->a(Landroid/widget/ImageView;Ljava/lang/String;I)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/ex$aa;

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lcom/nextpeer/android/ex$aa;->c:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v2, v1, Lcom/nextpeer/android/ex$aa;->d:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1
.end method
