.class final Lcom/nextpeer/android/eh$ad;
.super Lcom/nextpeer/android/eh$aa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/eh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ad"
.end annotation


# instance fields
.field final synthetic d:Lcom/nextpeer/android/eh;


# direct methods
.method public constructor <init>(Lcom/nextpeer/android/eh;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/nextpeer/android/dn;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nextpeer/android/eh$ad;->d:Lcom/nextpeer/android/eh;

    sget v0, Lcom/nextpeer/android/R$layout;->np__layout_listitem_current_matches_on_going:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/nextpeer/android/eh$aa;-><init>(Lcom/nextpeer/android/eh;Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method

.method private static a(Lcom/nextpeer/android/eh$ac;I)Landroid/widget/ImageView;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/nextpeer/android/eh$ac;->d:Landroid/widget/ImageView;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/nextpeer/android/eh$ac;->e:Landroid/widget/ImageView;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/nextpeer/android/eh$ac;->f:Landroid/widget/ImageView;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    if-nez p2, :cond_2

    new-instance v1, Lcom/nextpeer/android/eh$ac;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/nextpeer/android/eh$ac;-><init>(B)V

    iget-object v0, p0, Lcom/nextpeer/android/eh$ad;->a:Landroid/view/LayoutInflater;

    sget v2, Lcom/nextpeer/android/R$layout;->np__layout_listitem_current_matches_on_going:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    sget v0, Lcom/nextpeer/android/R$id;->np__current_matches_on_going_your_rank_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/nextpeer/android/eh$ac;->a:Landroid/widget/TextView;

    sget v0, Lcom/nextpeer/android/R$id;->np__current_matches_on_going_tournament_time_variable:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/nextpeer/android/eh$ac;->b:Landroid/widget/TextView;

    sget v0, Lcom/nextpeer/android/R$id;->np__current_matches_on_going_additional_players:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/nextpeer/android/eh$ac;->c:Landroid/widget/TextView;

    sget v0, Lcom/nextpeer/android/R$id;->np__current_matches_on_going_first_player_thumbnail:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/nextpeer/android/eh$ac;->d:Landroid/widget/ImageView;

    sget v0, Lcom/nextpeer/android/R$id;->np__current_matches_on_going_second_player_thumbnail:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/nextpeer/android/eh$ac;->e:Landroid/widget/ImageView;

    sget v0, Lcom/nextpeer/android/R$id;->np__current_matches_on_going_third_player_thumbnail:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/nextpeer/android/eh$ac;->f:Landroid/widget/ImageView;

    sget v0, Lcom/nextpeer/android/R$id;->np__current_matches_on_going_ribbon_line:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/nextpeer/android/eh$ac;->h:Landroid/view/View;

    sget v0, Lcom/nextpeer/android/R$id;->np__current_matches_on_going_your_rank_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/nextpeer/android/eh$ac;->i:Landroid/widget/ImageView;

    sget v0, Lcom/nextpeer/android/R$id;->np__current_matches_on_going_new_item_badge:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/NextpeerUIVerticalTextView;

    iput-object v0, v1, Lcom/nextpeer/android/eh$ac;->g:Lcom/nextpeer/android/NextpeerUIVerticalTextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    :goto_0
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nextpeer/android/eh$ad;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dn;

    invoke-static {}, Lcom/nextpeer/android/hh;->a()Lcom/nextpeer/android/hh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nextpeer/android/hh;->d()Lcom/nextpeer/android/hl;

    move-result-object v1

    iget-object v1, v1, Lcom/nextpeer/android/hl;->a:Lcom/nextpeer/android/hl$ab;

    iget-object v7, v1, Lcom/nextpeer/android/hl$ab;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nextpeer/android/dn;->a()Ljava/util/ArrayList;

    move-result-object v6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v1

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_1
    if-eqz v4, :cond_8

    iget-object v1, v2, Lcom/nextpeer/android/eh$ac;->g:Lcom/nextpeer/android/NextpeerUIVerticalTextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/nextpeer/android/NextpeerUIVerticalTextView;->setVisibility(I)V

    :goto_3
    if-eqz v5, :cond_9

    iget-object v1, v2, Lcom/nextpeer/android/eh$ac;->a:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object v1, v2, Lcom/nextpeer/android/eh$ac;->h:Landroid/view/View;

    iget-object v3, p0, Lcom/nextpeer/android/eh$ad;->b:Landroid/content/res/Resources;

    iget-object v4, p0, Lcom/nextpeer/android/eh$ad;->d:Lcom/nextpeer/android/eh;

    invoke-static {v6}, Lcom/nextpeer/android/eh;->b(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, v2, Lcom/nextpeer/android/eh$ac;->i:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/nextpeer/android/eh$ad;->d:Lcom/nextpeer/android/eh;

    invoke-static {v6}, Lcom/nextpeer/android/eh;->c(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, v2, Lcom/nextpeer/android/eh$ac;->b:Landroid/widget/TextView;

    iget v1, v0, Lcom/nextpeer/android/dn;->c:I

    const/16 v4, 0x3c

    if-gt v1, v4, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/nextpeer/android/eh$ad;->d:Lcom/nextpeer/android/eh;

    sget v5, Lcom/nextpeer/android/R$string;->np__current_matches_on_going_one:I

    invoke-virtual {v4, v5}, Lcom/nextpeer/android/eh;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/nextpeer/android/eh$ad;->d:Lcom/nextpeer/android/eh;

    sget v5, Lcom/nextpeer/android/R$string;->np__current_matches_on_going_time_minute:I

    invoke-virtual {v4, v5}, Lcom/nextpeer/android/eh;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/nextpeer/android/dn;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_10

    iget-object v1, v2, Lcom/nextpeer/android/eh$ac;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/nextpeer/android/eh$ad;->b:Landroid/content/res/Resources;

    sget v4, Lcom/nextpeer/android/R$string;->np__current_matches_extra_players:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v2, Lcom/nextpeer/android/eh$ac;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_6
    return-object p2

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/eh$ac;

    move-object v2, v0

    goto/16 :goto_0

    :cond_3
    invoke-static {v2, v0}, Lcom/nextpeer/android/eh$ad;->a(Lcom/nextpeer/android/eh$ac;I)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nextpeer/android/do;

    invoke-virtual {v1}, Lcom/nextpeer/android/do;->d()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v5, :cond_5

    if-eqz v9, :cond_7

    invoke-virtual {v1}, Lcom/nextpeer/android/do;->c()Z

    move-result v4

    const/4 v5, 0x1

    :cond_5
    :goto_7
    if-nez v9, :cond_11

    const/4 v9, 0x3

    if-ge v3, v9, :cond_11

    invoke-static {v2, v3}, Lcom/nextpeer/android/eh$ad;->a(Lcom/nextpeer/android/eh$ac;I)Landroid/widget/ImageView;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v1, Lcom/nextpeer/android/do;->c:Ljava/lang/String;

    sget v10, Lcom/nextpeer/android/R$drawable;->np__ic_thumbnail_place_holder:I

    invoke-static {v9, v1, v10}, Lcom/b/a/aq;->a(Landroid/widget/ImageView;Ljava/lang/String;I)V

    add-int/lit8 v3, v3, 0x1

    move v1, v3

    :goto_8
    if-eqz v5, :cond_6

    const/4 v3, 0x3

    if-ge v1, v3, :cond_1

    :cond_6
    move v3, v1

    goto/16 :goto_2

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_8
    iget-object v1, v2, Lcom/nextpeer/android/eh$ac;->g:Lcom/nextpeer/android/NextpeerUIVerticalTextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/nextpeer/android/NextpeerUIVerticalTextView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_9
    iget-object v1, v2, Lcom/nextpeer/android/eh$ac;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/nextpeer/android/eh$ad;->b:Landroid/content/res/Resources;

    sget v4, Lcom/nextpeer/android/R$string;->np__current_matches_score_unknown:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_a
    const v4, 0x15180

    div-int v4, v1, v4

    if-lez v4, :cond_c

    const/4 v1, 0x1

    if-ne v4, v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/nextpeer/android/eh$ad;->d:Lcom/nextpeer/android/eh;

    sget v5, Lcom/nextpeer/android/R$string;->np__current_matches_on_going_one:I

    invoke-virtual {v4, v5}, Lcom/nextpeer/android/eh;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/nextpeer/android/eh$ad;->d:Lcom/nextpeer/android/eh;

    sget v5, Lcom/nextpeer/android/R$string;->np__current_matches_on_going_time_day:I

    invoke-virtual {v4, v5}, Lcom/nextpeer/android/eh;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/nextpeer/android/eh$ad;->d:Lcom/nextpeer/android/eh;

    sget v5, Lcom/nextpeer/android/R$string;->np__current_matches_on_going_time_days:I

    invoke-virtual {v4, v5}, Lcom/nextpeer/android/eh;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    :cond_c
    const v4, 0x15180

    rem-int/2addr v1, v4

    div-int/lit16 v4, v1, 0xe10

    if-lez v4, :cond_e

    const/4 v1, 0x1

    if-ne v4, v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/nextpeer/android/eh$ad;->d:Lcom/nextpeer/android/eh;

    sget v5, Lcom/nextpeer/android/R$string;->np__current_matches_on_going_one:I

    invoke-virtual {v4, v5}, Lcom/nextpeer/android/eh;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/nextpeer/android/eh$ad;->d:Lcom/nextpeer/android/eh;

    sget v5, Lcom/nextpeer/android/R$string;->np__current_matches_on_going_time_hour:I

    invoke-virtual {v4, v5}, Lcom/nextpeer/android/eh;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/nextpeer/android/eh$ad;->d:Lcom/nextpeer/android/eh;

    sget v5, Lcom/nextpeer/android/R$string;->np__current_matches_on_going_time_hours:I

    invoke-virtual {v4, v5}, Lcom/nextpeer/android/eh;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    :cond_e
    rem-int/lit16 v1, v1, 0xe10

    div-int/lit8 v1, v1, 0x3c

    const/4 v4, 0x1

    if-le v1, v4, :cond_f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/nextpeer/android/eh$ad;->d:Lcom/nextpeer/android/eh;

    sget v5, Lcom/nextpeer/android/R$string;->np__current_matches_on_going_time_minutes:I

    invoke-virtual {v4, v5}, Lcom/nextpeer/android/eh;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/nextpeer/android/eh$ad;->d:Lcom/nextpeer/android/eh;

    sget v5, Lcom/nextpeer/android/R$string;->np__current_matches_on_going_one:I

    invoke-virtual {v4, v5}, Lcom/nextpeer/android/eh;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/nextpeer/android/eh$ad;->d:Lcom/nextpeer/android/eh;

    sget v5, Lcom/nextpeer/android/R$string;->np__current_matches_on_going_time_minute:I

    invoke-virtual {v4, v5}, Lcom/nextpeer/android/eh;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    :cond_10
    iget-object v0, v2, Lcom/nextpeer/android/eh$ac;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    :cond_11
    move v1, v3

    goto/16 :goto_8
.end method
