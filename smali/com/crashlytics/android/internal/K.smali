.class final Lcom/crashlytics/android/internal/K;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/crashlytics/android/internal/X;

.field private final b:Lcom/crashlytics/android/internal/ah;

.field private c:Lcom/crashlytics/android/internal/aK;

.field private final d:Lcom/crashlytics/android/internal/aj;

.field private final e:I

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/crashlytics/android/internal/ak;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/crashlytics/android/internal/X;Lcom/crashlytics/android/internal/ah;Lcom/crashlytics/android/internal/aj;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    const/16 v0, 0x64

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/crashlytics/android/internal/K;-><init>(Lcom/crashlytics/android/internal/X;Lcom/crashlytics/android/internal/ah;Lcom/crashlytics/android/internal/aj;I)V

    .line 66
    return-void
.end method

.method private constructor <init>(Lcom/crashlytics/android/internal/X;Lcom/crashlytics/android/internal/ah;Lcom/crashlytics/android/internal/aj;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/internal/K;->f:Ljava/util/List;

    .line 54
    iput-object p1, p0, Lcom/crashlytics/android/internal/K;->a:Lcom/crashlytics/android/internal/X;

    .line 55
    iput-object p3, p0, Lcom/crashlytics/android/internal/K;->d:Lcom/crashlytics/android/internal/aj;

    .line 56
    iput-object p2, p0, Lcom/crashlytics/android/internal/K;->b:Lcom/crashlytics/android/internal/ah;

    .line 58
    iget-object v0, p0, Lcom/crashlytics/android/internal/K;->b:Lcom/crashlytics/android/internal/ah;

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/ah;->a()J

    .line 60
    const/16 v0, 0x64

    iput v0, p0, Lcom/crashlytics/android/internal/K;->e:I

    .line 61
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lcom/crashlytics/android/internal/K;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/internal/ak;

    .line 155
    :try_start_0
    invoke-interface {v0}, Lcom/crashlytics/android/internal/ak;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v2

    const-string v3, "Crashlytics"

    const-string v4, "One of the roll over listeners threw an exception"

    invoke-interface {v2, v3, v4, v0}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 160
    :cond_0
    return-void
.end method

.method private static b(Ljava/lang/String;)J
    .locals 5
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 209
    const-string v2, "_"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 211
    array-length v3, v2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 216
    :goto_0
    return-wide v0

    .line 214
    :cond_0
    const/4 v3, 0x2

    :try_start_0
    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 216
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private e()I
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/crashlytics/android/internal/K;->c:Lcom/crashlytics/android/internal/aK;

    if-nez v0, :cond_0

    const/16 v0, 0x1f40

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/internal/K;->c:Lcom/crashlytics/android/internal/aK;

    iget v0, v0, Lcom/crashlytics/android/internal/aK;->c:I

    goto :goto_0
.end method


# virtual methods
.method final a(Lcom/crashlytics/android/internal/V;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/crashlytics/android/internal/K;->a:Lcom/crashlytics/android/internal/X;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/internal/X;->a(Lcom/crashlytics/android/internal/V;)[B

    move-result-object v0

    .line 70
    array-length v1, v0

    iget-object v2, p0, Lcom/crashlytics/android/internal/K;->d:Lcom/crashlytics/android/internal/aj;

    invoke-direct {p0}, Lcom/crashlytics/android/internal/K;->e()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/crashlytics/android/internal/aj;->a(II)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "session analytics events file is %d bytes, new event is %d bytes, this is over flush limit of %d, rolling it over"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/crashlytics/android/internal/K;->d:Lcom/crashlytics/android/internal/aj;

    invoke-virtual {v6}, Lcom/crashlytics/android/internal/aj;->a()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/crashlytics/android/internal/K;->e()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/crashlytics/android/internal/ab;->a(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/crashlytics/android/internal/K;->a()Z

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/crashlytics/android/internal/K;->d:Lcom/crashlytics/android/internal/aj;

    invoke-virtual {v1, v0}, Lcom/crashlytics/android/internal/aj;->a([B)V

    .line 73
    return-void
.end method

.method final a(Lcom/crashlytics/android/internal/aK;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/crashlytics/android/internal/K;->c:Lcom/crashlytics/android/internal/aK;

    .line 146
    return-void
.end method

.method final a(Lcom/crashlytics/android/internal/ak;)V
    .locals 1
    .parameter

    .prologue
    .line 80
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/internal/K;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_0
    return-void
.end method

.method final a(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/crashlytics/android/internal/K;->d:Lcom/crashlytics/android/internal/aj;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/internal/aj;->a(Ljava/util/List;)V

    .line 168
    return-void
.end method

.method final a()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    .line 89
    const/4 v0, 0x0

    .line 93
    iget-object v3, p0, Lcom/crashlytics/android/internal/K;->d:Lcom/crashlytics/android/internal/aj;

    invoke-virtual {v3}, Lcom/crashlytics/android/internal/aj;->b()Z

    move-result v3

    if-nez v3, :cond_0

    .line 94
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sa"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/crashlytics/android/internal/K;->b:Lcom/crashlytics/android/internal/ah;

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/ah;->a()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ".tap"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    iget-object v3, p0, Lcom/crashlytics/android/internal/K;->d:Lcom/crashlytics/android/internal/aj;

    invoke-virtual {v3, v0}, Lcom/crashlytics/android/internal/aj;->a(Ljava/lang/String;)V

    .line 97
    const/4 v3, 0x4

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "generated new to-send analytics file %s"

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/crashlytics/android/internal/ab;->a(ILjava/lang/String;)V

    .line 100
    iget-object v2, p0, Lcom/crashlytics/android/internal/K;->b:Lcom/crashlytics/android/internal/ah;

    invoke-virtual {v2}, Lcom/crashlytics/android/internal/ah;->a()J

    .line 104
    :goto_0
    invoke-direct {p0, v0}, Lcom/crashlytics/android/internal/K;->a(Ljava/lang/String;)V

    .line 105
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method final b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lcom/crashlytics/android/internal/K;->d:Lcom/crashlytics/android/internal/aj;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/internal/aj;->a(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method final c()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/crashlytics/android/internal/K;->d:Lcom/crashlytics/android/internal/aj;

    iget-object v1, p0, Lcom/crashlytics/android/internal/K;->d:Lcom/crashlytics/android/internal/aj;

    invoke-virtual {v1}, Lcom/crashlytics/android/internal/aj;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/internal/aj;->a(Ljava/util/List;)V

    .line 172
    iget-object v0, p0, Lcom/crashlytics/android/internal/K;->d:Lcom/crashlytics/android/internal/aj;

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/aj;->d()V

    .line 173
    return-void
.end method

.method final d()V
    .locals 7

    .prologue
    .line 176
    iget-object v0, p0, Lcom/crashlytics/android/internal/K;->d:Lcom/crashlytics/android/internal/aj;

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/aj;->c()Ljava/util/List;

    move-result-object v0

    .line 178
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/crashlytics/android/internal/K;->e:I

    if-gt v1, v2, :cond_0

    .line 206
    :goto_0
    return-void

    .line 180
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/crashlytics/android/internal/K;->e:I

    sub-int/2addr v1, v2

    .line 182
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Found %d files in session analytics roll over directory, this is greater than %d, deleting %d oldest files"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, p0, Lcom/crashlytics/android/internal/K;->e:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/crashlytics/android/internal/ab;->c(Ljava/lang/String;)V

    .line 186
    new-instance v2, Ljava/util/TreeSet;

    new-instance v3, Lcom/crashlytics/android/internal/L;

    invoke-direct {v3, p0}, Lcom/crashlytics/android/internal/L;-><init>(Lcom/crashlytics/android/internal/K;)V

    invoke-direct {v2, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 193
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 194
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/crashlytics/android/internal/K;->b(Ljava/lang/String;)J

    move-result-wide v4

    .line 195
    new-instance v6, Lcom/crashlytics/android/internal/M;

    invoke-direct {v6, p0, v0, v4, v5}, Lcom/crashlytics/android/internal/M;-><init>(Lcom/crashlytics/android/internal/K;Ljava/io/File;J)V

    invoke-virtual {v2, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 198
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 199
    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/internal/M;

    .line 200
    iget-object v0, v0, Lcom/crashlytics/android/internal/M;->a:Ljava/io/File;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 205
    :cond_3
    iget-object v0, p0, Lcom/crashlytics/android/internal/K;->d:Lcom/crashlytics/android/internal/aj;

    invoke-virtual {v0, v3}, Lcom/crashlytics/android/internal/aj;->a(Ljava/util/List;)V

    goto/16 :goto_0
.end method
