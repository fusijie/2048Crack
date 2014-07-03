.class final Lcom/nextpeer/android/gh;
.super Lcom/nextpeer/android/dx;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/gg;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/gg;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/gh;->a:Lcom/nextpeer/android/gg;

    invoke-direct {p0}, Lcom/nextpeer/android/dx;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisconnectFromServer()V
    .locals 5

    const-string v0, "Friends - onDisconnectFromServer"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/gh;->a:Lcom/nextpeer/android/gg;

    sget v1, Lcom/nextpeer/android/R$string;->np__error_message_disconnect_from_the_room_title:I

    sget v2, Lcom/nextpeer/android/R$string;->np__error_message_disconnect_from_the_room_description:I

    const/4 v3, 0x1

    const-string v4, "onDisconnectFromServer"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nextpeer/android/gg;->a(IIILjava/lang/String;)V

    return-void
.end method

.method public final onEncounterError(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Friends - onEncounterError with error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/gh;->a:Lcom/nextpeer/android/gg;

    sget v1, Lcom/nextpeer/android/R$string;->np__error_message_disconnect_from_the_room_title:I

    sget v2, Lcom/nextpeer/android/R$string;->np__error_message_disconnect_from_the_room_description:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/nextpeer/android/gg;->a(IIILjava/lang/String;)V

    return-void
.end method

.method public final onReceiveMatchDetails(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReceiveMatchDetails - secondsLeft "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/gh;->a:Lcom/nextpeer/android/gg;

    invoke-static {v0, p1}, Lcom/nextpeer/android/gg;->a(Lcom/nextpeer/android/gg;I)V

    iget-object v0, p0, Lcom/nextpeer/android/gh;->a:Lcom/nextpeer/android/gg;

    invoke-static {v0}, Lcom/nextpeer/android/gg;->d(Lcom/nextpeer/android/gg;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/gh;->a:Lcom/nextpeer/android/gg;

    invoke-static {v0}, Lcom/nextpeer/android/gg;->e(Lcom/nextpeer/android/gg;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/gh;->a:Lcom/nextpeer/android/gg;

    invoke-static {v0}, Lcom/nextpeer/android/gg;->f(Lcom/nextpeer/android/gg;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/nextpeer/android/gh;->a:Lcom/nextpeer/android/gg;

    invoke-static {v0}, Lcom/nextpeer/android/gg;->g(Lcom/nextpeer/android/gg;)V

    iget-object v0, p0, Lcom/nextpeer/android/gh;->a:Lcom/nextpeer/android/gg;

    invoke-static {v0}, Lcom/nextpeer/android/gg;->h(Lcom/nextpeer/android/gg;)V

    :cond_0
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

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v5, v0

    move v2, v4

    :goto_0
    if-gez v5, :cond_2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/nextpeer/android/dq$aa;

    invoke-direct {v0}, Lcom/nextpeer/android/dq$aa;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v6, v4

    move v5, v4

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz v5, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/gh;->a:Lcom/nextpeer/android/gg;

    invoke-static {v0}, Lcom/nextpeer/android/gg;->c(Lcom/nextpeer/android/gg;)Lcom/nextpeer/android/gg$ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/gg$ab;->notifyDataSetChanged()V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dq;

    iget-object v1, v0, Lcom/nextpeer/android/dq;->a:Lcom/nextpeer/android/dp;

    invoke-virtual {v1}, Lcom/nextpeer/android/dp;->d()Ljava/lang/String;

    move-result-object v6

    iget-object v1, v0, Lcom/nextpeer/android/dq;->a:Lcom/nextpeer/android/dp;

    iget-boolean v1, v1, Lcom/nextpeer/android/dp;->d:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/nextpeer/android/gh;->a:Lcom/nextpeer/android/gg;

    invoke-static {v1}, Lcom/nextpeer/android/gg;->a(Lcom/nextpeer/android/gg;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_3
    iget-object v1, p0, Lcom/nextpeer/android/gh;->a:Lcom/nextpeer/android/gg;

    invoke-static {v1}, Lcom/nextpeer/android/gg;->b(Lcom/nextpeer/android/gg;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/nextpeer/android/gh;->a:Lcom/nextpeer/android/gg;

    invoke-static {v1}, Lcom/nextpeer/android/gg;->b(Lcom/nextpeer/android/gg;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nextpeer/android/dq;

    iget v7, v0, Lcom/nextpeer/android/dq;->b:I

    iget v8, v1, Lcom/nextpeer/android/dq;->b:I

    if-ge v7, v8, :cond_4

    move v0, v3

    :goto_2
    if-eqz v0, :cond_d

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v3

    :goto_3
    add-int/lit8 v1, v5, -0x1

    move v5, v1

    move v2, v0

    goto :goto_0

    :cond_4
    iget v7, v0, Lcom/nextpeer/android/dq;->b:I

    iget v8, v1, Lcom/nextpeer/android/dq;->b:I

    if-le v7, v8, :cond_5

    iget-object v7, p0, Lcom/nextpeer/android/gh;->a:Lcom/nextpeer/android/gg;

    invoke-static {v7}, Lcom/nextpeer/android/gg;->b(Lcom/nextpeer/android/gg;)Ljava/util/Hashtable;

    move-result-object v7

    invoke-virtual {v7, v6, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    move v0, v4

    goto :goto_2

    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/nextpeer/android/dq;

    iget-object v0, v1, Lcom/nextpeer/android/dq;->a:Lcom/nextpeer/android/dp;

    invoke-virtual {v0}, Lcom/nextpeer/android/dp;->d()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/nextpeer/android/gh;->a:Lcom/nextpeer/android/gg;

    invoke-static {v0}, Lcom/nextpeer/android/gg;->c(Lcom/nextpeer/android/gg;)Lcom/nextpeer/android/gg$ab;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/nextpeer/android/gg$ab;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dq;

    iget-object v2, v0, Lcom/nextpeer/android/dq;->a:Lcom/nextpeer/android/dp;

    invoke-virtual {v2}, Lcom/nextpeer/android/dp;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget v2, v1, Lcom/nextpeer/android/dq;->b:I

    iget v8, v0, Lcom/nextpeer/android/dq;->b:I

    if-ne v2, v8, :cond_7

    iget-boolean v2, v1, Lcom/nextpeer/android/dq;->c:Z

    iget-boolean v8, v0, Lcom/nextpeer/android/dq;->c:Z

    if-eq v2, v8, :cond_c

    :cond_7
    iget-object v2, p0, Lcom/nextpeer/android/gh;->a:Lcom/nextpeer/android/gg;

    invoke-static {v2}, Lcom/nextpeer/android/gg;->c(Lcom/nextpeer/android/gg;)Lcom/nextpeer/android/gg$ab;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/nextpeer/android/gg$ab;->remove(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nextpeer/android/gh;->a:Lcom/nextpeer/android/gg;

    invoke-static {v0}, Lcom/nextpeer/android/gg;->c(Lcom/nextpeer/android/gg;)Lcom/nextpeer/android/gg$ab;

    move-result-object v0

    invoke-virtual {v0, v1, v6}, Lcom/nextpeer/android/gg$ab;->insert(Ljava/lang/Object;I)V

    move v0, v3

    :goto_4
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    move v5, v0

    goto/16 :goto_1

    :cond_8
    move v2, v4

    :goto_5
    iget-object v9, p0, Lcom/nextpeer/android/gh;->a:Lcom/nextpeer/android/gg;

    invoke-static {v9}, Lcom/nextpeer/android/gg;->c(Lcom/nextpeer/android/gg;)Lcom/nextpeer/android/gg$ab;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nextpeer/android/gg$ab;->getCount()I

    move-result v9

    if-lt v2, v9, :cond_9

    move v2, v4

    :goto_6
    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/nextpeer/android/gh;->a:Lcom/nextpeer/android/gg;

    invoke-static {v2}, Lcom/nextpeer/android/gg;->c(Lcom/nextpeer/android/gg;)Lcom/nextpeer/android/gg$ab;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/nextpeer/android/gg$ab;->remove(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nextpeer/android/gh;->a:Lcom/nextpeer/android/gg;

    invoke-static {v0}, Lcom/nextpeer/android/gg;->c(Lcom/nextpeer/android/gg;)Lcom/nextpeer/android/gg$ab;

    move-result-object v0

    invoke-virtual {v0, v1, v6}, Lcom/nextpeer/android/gg$ab;->insert(Ljava/lang/Object;I)V

    move v0, v3

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/nextpeer/android/gh;->a:Lcom/nextpeer/android/gg;

    invoke-static {v0}, Lcom/nextpeer/android/gg;->c(Lcom/nextpeer/android/gg;)Lcom/nextpeer/android/gg$ab;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nextpeer/android/gg$ab;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dq;

    iget-object v9, v0, Lcom/nextpeer/android/dq;->a:Lcom/nextpeer/android/dp;

    invoke-virtual {v9}, Lcom/nextpeer/android/dp;->d()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a

    move v2, v3

    goto :goto_6

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "didReceiveResults: ERROR - Got result on an unknown player with id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    :cond_c
    move v0, v5

    goto :goto_4

    :cond_d
    move v0, v2

    goto/16 :goto_3
.end method
