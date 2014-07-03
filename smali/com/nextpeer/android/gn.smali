.class final Lcom/nextpeer/android/gn;
.super Lcom/nextpeer/android/dx;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/gm;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/gm;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/gn;->a:Lcom/nextpeer/android/gm;

    invoke-direct {p0}, Lcom/nextpeer/android/dx;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisconnectFromServer()V
    .locals 4

    const-string v0, "Random - onDisconnectFromServer"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/gn;->a:Lcom/nextpeer/android/gm;

    sget v1, Lcom/nextpeer/android/R$string;->np__error_message_disconnect_from_the_room_title:I

    sget v2, Lcom/nextpeer/android/R$string;->np__error_message_disconnect_from_the_room_description:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/nextpeer/android/gm;->a(III)V

    return-void
.end method

.method public final onEncounterError(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Random - onEncounterError with error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/gn;->a:Lcom/nextpeer/android/gm;

    sget v1, Lcom/nextpeer/android/R$string;->np__error_message_disconnect_from_the_room_title:I

    sget v2, Lcom/nextpeer/android/R$string;->np__error_message_disconnect_from_the_room_description:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/nextpeer/android/gm;->a(IIILjava/lang/String;)V

    return-void
.end method

.method public final onReceiveResults(Ljava/util/ArrayList;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nextpeer/android/dq;",
            ">;Z)V"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/nextpeer/android/gn;->a:Lcom/nextpeer/android/gm;

    invoke-static {v0}, Lcom/nextpeer/android/gm;->a(Lcom/nextpeer/android/gm;)Lcom/nextpeer/android/gm$ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/gm$ab;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nextpeer/android/gn;->a:Lcom/nextpeer/android/gm;

    invoke-static {v0}, Lcom/nextpeer/android/gm;->b(Lcom/nextpeer/android/gm;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/gn;->a:Lcom/nextpeer/android/gm;

    invoke-static {v0}, Lcom/nextpeer/android/gm;->a(Lcom/nextpeer/android/gm;)Lcom/nextpeer/android/gm$ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/gm$ab;->notifyDataSetChanged()V

    :cond_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dq;

    iget-object v2, p0, Lcom/nextpeer/android/gn;->a:Lcom/nextpeer/android/gm;

    invoke-static {v2}, Lcom/nextpeer/android/gm;->a(Lcom/nextpeer/android/gm;)Lcom/nextpeer/android/gm$ab;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/nextpeer/android/gm$ab;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_a

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v6, v3

    move v4, v3

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move v5, v4

    goto :goto_1

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/nextpeer/android/dq;

    iget-object v0, v1, Lcom/nextpeer/android/dq;->a:Lcom/nextpeer/android/dp;

    invoke-virtual {v0}, Lcom/nextpeer/android/dp;->d()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/nextpeer/android/gn;->a:Lcom/nextpeer/android/gm;

    invoke-static {v0}, Lcom/nextpeer/android/gm;->a(Lcom/nextpeer/android/gm;)Lcom/nextpeer/android/gm$ab;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/nextpeer/android/gm$ab;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dq;

    iget-object v2, v0, Lcom/nextpeer/android/dq;->a:Lcom/nextpeer/android/dp;

    invoke-virtual {v2}, Lcom/nextpeer/android/dp;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, v1, Lcom/nextpeer/android/dq;->b:I

    iget v8, v0, Lcom/nextpeer/android/dq;->b:I

    if-ne v2, v8, :cond_4

    iget-boolean v2, v1, Lcom/nextpeer/android/dq;->c:Z

    iget-boolean v8, v0, Lcom/nextpeer/android/dq;->c:Z

    if-eq v2, v8, :cond_9

    :cond_4
    iget-object v2, p0, Lcom/nextpeer/android/gn;->a:Lcom/nextpeer/android/gm;

    invoke-static {v2}, Lcom/nextpeer/android/gm;->a(Lcom/nextpeer/android/gm;)Lcom/nextpeer/android/gm$ab;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/nextpeer/android/gm$ab;->remove(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nextpeer/android/gn;->a:Lcom/nextpeer/android/gm;

    invoke-static {v0}, Lcom/nextpeer/android/gm;->a(Lcom/nextpeer/android/gm;)Lcom/nextpeer/android/gm$ab;

    move-result-object v0

    invoke-virtual {v0, v1, v6}, Lcom/nextpeer/android/gm$ab;->insert(Ljava/lang/Object;I)V

    move v0, v5

    :goto_3
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    move v4, v0

    goto :goto_2

    :cond_5
    move v2, v3

    :goto_4
    iget-object v9, p0, Lcom/nextpeer/android/gn;->a:Lcom/nextpeer/android/gm;

    invoke-static {v9}, Lcom/nextpeer/android/gm;->a(Lcom/nextpeer/android/gm;)Lcom/nextpeer/android/gm$ab;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nextpeer/android/gm$ab;->getCount()I

    move-result v9

    if-lt v2, v9, :cond_6

    move-object v2, v0

    move v0, v3

    :goto_5
    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/nextpeer/android/gn;->a:Lcom/nextpeer/android/gm;

    invoke-static {v0}, Lcom/nextpeer/android/gm;->a(Lcom/nextpeer/android/gm;)Lcom/nextpeer/android/gm$ab;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nextpeer/android/gm$ab;->remove(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nextpeer/android/gn;->a:Lcom/nextpeer/android/gm;

    invoke-static {v0}, Lcom/nextpeer/android/gm;->a(Lcom/nextpeer/android/gm;)Lcom/nextpeer/android/gm$ab;

    move-result-object v0

    invoke-virtual {v0, v1, v6}, Lcom/nextpeer/android/gm$ab;->insert(Ljava/lang/Object;I)V

    move v0, v5

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/nextpeer/android/gn;->a:Lcom/nextpeer/android/gm;

    invoke-static {v0}, Lcom/nextpeer/android/gm;->a(Lcom/nextpeer/android/gm;)Lcom/nextpeer/android/gm$ab;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nextpeer/android/gm$ab;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dq;

    iget-object v9, v0, Lcom/nextpeer/android/dq;->a:Lcom/nextpeer/android/dp;

    invoke-virtual {v9}, Lcom/nextpeer/android/dp;->d()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    move-object v2, v0

    move v0, v5

    goto :goto_5

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "didReceiveResults: ERROR - Got result on an unknown player with id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    :cond_9
    move v0, v4

    goto :goto_3

    :cond_a
    move v5, v3

    goto/16 :goto_1
.end method
