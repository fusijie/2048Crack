.class public final Lcom/nextpeer/android/da;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/da$aa;
    }
.end annotation


# instance fields
.field private final a:Lcom/nextpeer/android/da$aa;

.field private final b:Lcom/nextpeer/android/da$aa;


# direct methods
.method private constructor <init>(Lcom/nextpeer/android/da$aa;Lcom/nextpeer/android/da$aa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nextpeer/android/da;->a:Lcom/nextpeer/android/da$aa;

    iput-object p2, p0, Lcom/nextpeer/android/da;->b:Lcom/nextpeer/android/da$aa;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/String;Ljava/lang/Number;)Lcom/nextpeer/android/da;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    new-instance v1, Lcom/nextpeer/android/da$aa;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/nextpeer/android/da$aa;-><init>(Ljava/lang/String;I)V

    move-object v2, v1

    :goto_0
    if-eqz p2, :cond_2

    if-eqz p2, :cond_2

    new-instance v1, Lcom/nextpeer/android/da$aa;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v1, p2, v3}, Lcom/nextpeer/android/da$aa;-><init>(Ljava/lang/String;I)V

    :goto_1
    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Lcom/nextpeer/android/da;

    invoke-direct {v0, v2, v1}, Lcom/nextpeer/android/da;-><init>(Lcom/nextpeer/android/da$aa;Lcom/nextpeer/android/da$aa;)V

    :cond_1
    return-object v0

    :cond_2
    move-object v1, v0

    goto :goto_1

    :cond_3
    move-object v2, v0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/nextpeer/android/da$aa;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/da;->a:Lcom/nextpeer/android/da$aa;

    return-object v0
.end method

.method public final a(Lcom/nextpeer/android/da$aa;)Z
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/da;->b:Lcom/nextpeer/android/da$aa;

    invoke-virtual {p1, v0}, Lcom/nextpeer/android/da$aa;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/da;->b:Lcom/nextpeer/android/da$aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/da;->a:Lcom/nextpeer/android/da$aa;

    invoke-virtual {p1, v0}, Lcom/nextpeer/android/da$aa;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b()Lcom/nextpeer/android/da$aa;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/da;->b:Lcom/nextpeer/android/da$aa;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/nextpeer/android/da;

    iget-object v2, p0, Lcom/nextpeer/android/da;->b:Lcom/nextpeer/android/da$aa;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/nextpeer/android/da;->b:Lcom/nextpeer/android/da$aa;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/nextpeer/android/da;->b:Lcom/nextpeer/android/da$aa;

    iget-object v3, p1, Lcom/nextpeer/android/da;->b:Lcom/nextpeer/android/da$aa;

    invoke-virtual {v2, v3}, Lcom/nextpeer/android/da$aa;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/nextpeer/android/da;->a:Lcom/nextpeer/android/da$aa;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/nextpeer/android/da;->a:Lcom/nextpeer/android/da$aa;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/nextpeer/android/da;->a:Lcom/nextpeer/android/da$aa;

    iget-object v3, p1, Lcom/nextpeer/android/da;->a:Lcom/nextpeer/android/da$aa;

    invoke-virtual {v2, v3}, Lcom/nextpeer/android/da$aa;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nextpeer/android/da;->b:Lcom/nextpeer/android/da$aa;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/nextpeer/android/da;->a:Lcom/nextpeer/android/da$aa;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/da;->b:Lcom/nextpeer/android/da$aa;

    invoke-virtual {v0}, Lcom/nextpeer/android/da$aa;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/nextpeer/android/da;->a:Lcom/nextpeer/android/da$aa;

    invoke-virtual {v1}, Lcom/nextpeer/android/da$aa;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PlayerIpContainer [mPublic="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nextpeer/android/da;->a:Lcom/nextpeer/android/da$aa;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInternal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/da;->b:Lcom/nextpeer/android/da$aa;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
