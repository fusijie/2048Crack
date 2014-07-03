.class final Lcom/nextpeer/android/gm$ab;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/gm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/nextpeer/android/dq;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nextpeer/android/gm;

.field private final b:Landroid/view/LayoutInflater;

.field private final c:Landroid/content/res/Resources;

.field private final d:Lcom/nextpeer/android/hl;


# direct methods
.method public constructor <init>(Lcom/nextpeer/android/gm;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/nextpeer/android/dq;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nextpeer/android/gm$ab;->a:Lcom/nextpeer/android/gm;

    sget v0, Lcom/nextpeer/android/R$layout;->np__layout_listitem_tournament_results_random_peer:I

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/nextpeer/android/gm$ab;->b:Landroid/view/LayoutInflater;

    invoke-virtual {p1}, Lcom/nextpeer/android/gm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/gm$ab;->c:Landroid/content/res/Resources;

    invoke-static {}, Lcom/nextpeer/android/hh;->a()Lcom/nextpeer/android/hh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/hh;->d()Lcom/nextpeer/android/hl;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/gm$ab;->d:Lcom/nextpeer/android/hl;

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p2, :cond_0

    new-instance v1, Lcom/nextpeer/android/gm$ac;

    invoke-direct {v1, v4}, Lcom/nextpeer/android/gm$ac;-><init>(B)V

    iget-object v0, p0, Lcom/nextpeer/android/gm$ab;->b:Landroid/view/LayoutInflater;

    sget v2, Lcom/nextpeer/android/R$layout;->np__layout_listitem_tournament_results_random_peer:I

    invoke-virtual {v0, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    sget v0, Lcom/nextpeer/android/R$id;->np__tournament_results_random_peer_ribbon_line:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/nextpeer/android/gm$ac;->a:Landroid/view/View;

    sget v0, Lcom/nextpeer/android/R$id;->np__tournament_results_random_peer_ribbon_flag:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/nextpeer/android/gm$ac;->b:Landroid/widget/TextView;

    sget v0, Lcom/nextpeer/android/R$id;->np__tournament_results_random_peer_thumbnail:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/nextpeer/android/gm$ac;->c:Landroid/widget/ImageView;

    sget v0, Lcom/nextpeer/android/R$id;->np__tournament_results_random_peer_text_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/nextpeer/android/gm$ac;->d:Landroid/widget/TextView;

    sget v0, Lcom/nextpeer/android/R$id;->np__tournament_results_random_peer_text_playing:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/nextpeer/android/gm$ac;->e:Landroid/widget/TextView;

    sget v0, Lcom/nextpeer/android/R$id;->np__tournament_results_random_peer_text_score:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/nextpeer/android/gm$ac;->f:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/nextpeer/android/gm$ab;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dq;

    iget-object v5, v1, Lcom/nextpeer/android/gm$ac;->a:Landroid/view/View;

    iget-object v6, p0, Lcom/nextpeer/android/gm$ab;->c:Landroid/content/res/Resources;

    if-nez p1, :cond_1

    sget v2, Lcom/nextpeer/android/R$color;->np__nextpeer_orange:I

    :goto_1
    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v5, v1, Lcom/nextpeer/android/gm$ac;->b:Landroid/widget/TextView;

    if-nez p1, :cond_4

    sget v2, Lcom/nextpeer/android/R$drawable;->np__tournament_results_peer_ribbon_flag_orange:I

    :goto_2
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v2, v1, Lcom/nextpeer/android/gm$ac;->b:Landroid/widget/TextView;

    add-int/lit8 v5, p1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/nextpeer/android/gm$ab;->d:Lcom/nextpeer/android/hl;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/nextpeer/android/gm$ab;->d:Lcom/nextpeer/android/hl;

    iget-object v2, v2, Lcom/nextpeer/android/hl;->a:Lcom/nextpeer/android/hl$ab;

    iget-object v2, v2, Lcom/nextpeer/android/hl$ab;->a:Ljava/lang/String;

    iget-object v5, v0, Lcom/nextpeer/android/dq;->a:Lcom/nextpeer/android/dp;

    invoke-virtual {v5}, Lcom/nextpeer/android/dp;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    :goto_3
    if-eqz v3, :cond_8

    iget-object v2, p0, Lcom/nextpeer/android/gm$ab;->d:Lcom/nextpeer/android/hl;

    iget-object v2, v2, Lcom/nextpeer/android/hl;->a:Lcom/nextpeer/android/hl$ab;

    invoke-virtual {v2}, Lcom/nextpeer/android/hl$ab;->b()Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, v1, Lcom/nextpeer/android/gm$ac;->c:Landroid/widget/ImageView;

    sget v6, Lcom/nextpeer/android/R$drawable;->np__ic_thumbnail_place_holder:I

    invoke-static {v5, v2, v6}, Lcom/b/a/aq;->a(Landroid/widget/ImageView;Ljava/lang/String;I)V

    :goto_5
    if-eqz v3, :cond_a

    iget-object v2, p0, Lcom/nextpeer/android/gm$ab;->d:Lcom/nextpeer/android/hl;

    iget-object v2, v2, Lcom/nextpeer/android/hl;->a:Lcom/nextpeer/android/hl$ab;

    invoke-virtual {v2}, Lcom/nextpeer/android/hl$ab;->a()Ljava/lang/String;

    move-result-object v2

    :goto_6
    iget-object v3, v1, Lcom/nextpeer/android/gm$ac;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v2, v0, Lcom/nextpeer/android/dq;->c:Z

    if-eqz v2, :cond_b

    iget-object v2, v1, Lcom/nextpeer/android/gm$ac;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_7
    iget-object v1, v1, Lcom/nextpeer/android/gm$ac;->f:Landroid/widget/TextView;

    iget v0, v0, Lcom/nextpeer/android/dq;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/gm$ac;

    move-object v1, v0

    goto/16 :goto_0

    :cond_1
    if-ne p1, v3, :cond_2

    sget v2, Lcom/nextpeer/android/R$color;->np__blue:I

    goto :goto_1

    :cond_2
    if-ne p1, v7, :cond_3

    sget v2, Lcom/nextpeer/android/R$color;->np__purple:I

    goto :goto_1

    :cond_3
    sget v2, Lcom/nextpeer/android/R$color;->np__grey:I

    goto/16 :goto_1

    :cond_4
    if-ne p1, v3, :cond_5

    sget v2, Lcom/nextpeer/android/R$drawable;->np__tournament_results_peer_ribbon_flag_blue:I

    goto :goto_2

    :cond_5
    if-ne p1, v7, :cond_6

    sget v2, Lcom/nextpeer/android/R$drawable;->np__tournament_results_peer_ribbon_flag_purple:I

    goto :goto_2

    :cond_6
    sget v2, Lcom/nextpeer/android/R$drawable;->np__tournament_results_peer_ribbon_flag_grey:I

    goto/16 :goto_2

    :cond_7
    move v3, v4

    goto :goto_3

    :cond_8
    iget-object v2, v0, Lcom/nextpeer/android/dq;->a:Lcom/nextpeer/android/dp;

    iget-object v2, v2, Lcom/nextpeer/android/dp;->c:Ljava/lang/String;

    goto :goto_4

    :cond_9
    iget-object v2, v1, Lcom/nextpeer/android/gm$ac;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    :cond_a
    iget-object v2, v0, Lcom/nextpeer/android/dq;->a:Lcom/nextpeer/android/dp;

    iget-object v2, v2, Lcom/nextpeer/android/dp;->b:Ljava/lang/String;

    goto :goto_6

    :cond_b
    iget-object v2, v1, Lcom/nextpeer/android/gm$ac;->e:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7
.end method
