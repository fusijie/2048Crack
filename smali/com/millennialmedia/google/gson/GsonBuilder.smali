.class public final Lcom/millennialmedia/google/gson/GsonBuilder;
.super Ljava/lang/Object;
.source "GsonBuilder.java"


# instance fields
.field private complexMapKeySerialization:Z

.field private datePattern:Ljava/lang/String;

.field private dateStyle:I

.field private escapeHtmlChars:Z

.field private excluder:Lcom/millennialmedia/google/gson/internal/Excluder;

.field private final factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/google/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private fieldNamingPolicy:Lcom/millennialmedia/google/gson/FieldNamingStrategy;

.field private generateNonExecutableJson:Z

.field private final hierarchyFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/google/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final instanceCreators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/millennialmedia/google/gson/InstanceCreator",
            "<*>;>;"
        }
    .end annotation
.end field

.field private longSerializationPolicy:Lcom/millennialmedia/google/gson/LongSerializationPolicy;

.field private prettyPrinting:Z

.field private serializeNulls:Z

.field private serializeSpecialFloatingPointValues:Z

.field private timeStyle:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    sget-object v0, Lcom/millennialmedia/google/gson/internal/Excluder;->DEFAULT:Lcom/millennialmedia/google/gson/internal/Excluder;

    iput-object v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->excluder:Lcom/millennialmedia/google/gson/internal/Excluder;

    .line 76
    sget-object v0, Lcom/millennialmedia/google/gson/LongSerializationPolicy;->DEFAULT:Lcom/millennialmedia/google/gson/LongSerializationPolicy;

    iput-object v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->longSerializationPolicy:Lcom/millennialmedia/google/gson/LongSerializationPolicy;

    .line 77
    sget-object v0, Lcom/millennialmedia/google/gson/FieldNamingPolicy;->IDENTITY:Lcom/millennialmedia/google/gson/FieldNamingPolicy;

    iput-object v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->fieldNamingPolicy:Lcom/millennialmedia/google/gson/FieldNamingStrategy;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->factories:Ljava/util/List;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    .line 87
    iput v1, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->dateStyle:I

    .line 88
    iput v1, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->timeStyle:I

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->escapeHtmlChars:Z

    .line 103
    return-void
.end method

.method private addTypeAdaptersForDate(Ljava/lang/String;IILjava/util/List;)V
    .locals 4
    .parameter "datePattern"
    .parameter "dateStyle"
    .parameter "timeStyle"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/google/gson/TypeAdapterFactory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, factories:Ljava/util/List;,"Ljava/util/List<Lcom/millennialmedia/google/gson/TypeAdapterFactory;>;"
    const/4 v3, 0x2

    .line 687
    if-eqz p1, :cond_1

    const-string v1, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 688
    new-instance v0, Lcom/millennialmedia/google/gson/DefaultDateTypeAdapter;

    invoke-direct {v0, p1}, Lcom/millennialmedia/google/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/String;)V

    .line 696
    .local v0, dateTypeAdapter:Lcom/millennialmedia/google/gson/DefaultDateTypeAdapter;
    :goto_0
    const-class v1, Ljava/util/Date;

    invoke-static {v1}, Lcom/millennialmedia/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/millennialmedia/google/gson/reflect/TypeToken;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/millennialmedia/google/gson/TreeTypeAdapter;->newFactory(Lcom/millennialmedia/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 698
    const-class v1, Ljava/sql/Timestamp;

    invoke-static {v1}, Lcom/millennialmedia/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/millennialmedia/google/gson/reflect/TypeToken;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/millennialmedia/google/gson/TreeTypeAdapter;->newFactory(Lcom/millennialmedia/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 700
    const-class v1, Ljava/sql/Date;

    invoke-static {v1}, Lcom/millennialmedia/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/millennialmedia/google/gson/reflect/TypeToken;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/millennialmedia/google/gson/TreeTypeAdapter;->newFactory(Lcom/millennialmedia/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 702
    .end local v0           #dateTypeAdapter:Lcom/millennialmedia/google/gson/DefaultDateTypeAdapter;
    :cond_0
    return-void

    .line 689
    :cond_1
    if-eq p2, v3, :cond_0

    if-eq p3, v3, :cond_0

    .line 691
    new-instance v0, Lcom/millennialmedia/google/gson/DefaultDateTypeAdapter;

    invoke-direct {v0, p2, p3}, Lcom/millennialmedia/google/gson/DefaultDateTypeAdapter;-><init>(II)V

    .restart local v0       #dateTypeAdapter:Lcom/millennialmedia/google/gson/DefaultDateTypeAdapter;
    goto :goto_0
.end method


# virtual methods
.method public addDeserializationExclusionStrategy(Lcom/millennialmedia/google/gson/ExclusionStrategy;)Lcom/millennialmedia/google/gson/GsonBuilder;
    .locals 3
    .parameter "strategy"

    .prologue
    .line 407
    iget-object v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->excluder:Lcom/millennialmedia/google/gson/internal/Excluder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/millennialmedia/google/gson/internal/Excluder;->withExclusionStrategy(Lcom/millennialmedia/google/gson/ExclusionStrategy;ZZ)Lcom/millennialmedia/google/gson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->excluder:Lcom/millennialmedia/google/gson/internal/Excluder;

    .line 408
    return-object p0
.end method

.method public addSerializationExclusionStrategy(Lcom/millennialmedia/google/gson/ExclusionStrategy;)Lcom/millennialmedia/google/gson/GsonBuilder;
    .locals 3
    .parameter "strategy"

    .prologue
    .line 385
    iget-object v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->excluder:Lcom/millennialmedia/google/gson/internal/Excluder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/millennialmedia/google/gson/internal/Excluder;->withExclusionStrategy(Lcom/millennialmedia/google/gson/ExclusionStrategy;ZZ)Lcom/millennialmedia/google/gson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->excluder:Lcom/millennialmedia/google/gson/internal/Excluder;

    .line 386
    return-object p0
.end method

.method public create()Lcom/millennialmedia/google/gson/Gson;
    .locals 12

    .prologue
    .line 670
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 671
    .local v11, factories:Ljava/util/List;,"Ljava/util/List<Lcom/millennialmedia/google/gson/TypeAdapterFactory;>;"
    iget-object v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 672
    invoke-static {v11}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 673
    iget-object v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 674
    iget-object v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    iget v1, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->dateStyle:I

    iget v2, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->timeStyle:I

    invoke-direct {p0, v0, v1, v2, v11}, Lcom/millennialmedia/google/gson/GsonBuilder;->addTypeAdaptersForDate(Ljava/lang/String;IILjava/util/List;)V

    .line 676
    new-instance v0, Lcom/millennialmedia/google/gson/Gson;

    iget-object v1, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->excluder:Lcom/millennialmedia/google/gson/internal/Excluder;

    iget-object v2, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->fieldNamingPolicy:Lcom/millennialmedia/google/gson/FieldNamingStrategy;

    iget-object v3, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    iget-boolean v4, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->serializeNulls:Z

    iget-boolean v5, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->complexMapKeySerialization:Z

    iget-boolean v6, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->generateNonExecutableJson:Z

    iget-boolean v7, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->escapeHtmlChars:Z

    iget-boolean v8, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->prettyPrinting:Z

    iget-boolean v9, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    iget-object v10, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->longSerializationPolicy:Lcom/millennialmedia/google/gson/LongSerializationPolicy;

    invoke-direct/range {v0 .. v11}, Lcom/millennialmedia/google/gson/Gson;-><init>(Lcom/millennialmedia/google/gson/internal/Excluder;Lcom/millennialmedia/google/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZLcom/millennialmedia/google/gson/LongSerializationPolicy;Ljava/util/List;)V

    return-object v0
.end method

.method public disableHtmlEscaping()Lcom/millennialmedia/google/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 434
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->escapeHtmlChars:Z

    .line 435
    return-object p0
.end method

.method public disableInnerClassSerialization()Lcom/millennialmedia/google/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->excluder:Lcom/millennialmedia/google/gson/internal/Excluder;

    invoke-virtual {v0}, Lcom/millennialmedia/google/gson/internal/Excluder;->disableInnerClassSerialization()Lcom/millennialmedia/google/gson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->excluder:Lcom/millennialmedia/google/gson/internal/Excluder;

    .line 292
    return-object p0
.end method

.method public enableComplexMapKeySerialization()Lcom/millennialmedia/google/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->complexMapKeySerialization:Z

    .line 279
    return-object p0
.end method

.method public varargs excludeFieldsWithModifiers([I)Lcom/millennialmedia/google/gson/GsonBuilder;
    .locals 1
    .parameter "modifiers"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->excluder:Lcom/millennialmedia/google/gson/internal/Excluder;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/google/gson/internal/Excluder;->withModifiers([I)Lcom/millennialmedia/google/gson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->excluder:Lcom/millennialmedia/google/gson/internal/Excluder;

    .line 136
    return-object p0
.end method

.method public excludeFieldsWithoutExposeAnnotation()Lcom/millennialmedia/google/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->excluder:Lcom/millennialmedia/google/gson/internal/Excluder;

    invoke-virtual {v0}, Lcom/millennialmedia/google/gson/internal/Excluder;->excludeFieldsWithoutExposeAnnotation()Lcom/millennialmedia/google/gson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->excluder:Lcom/millennialmedia/google/gson/internal/Excluder;

    .line 167
    return-object p0
.end method

.method public generateNonExecutableJson()Lcom/millennialmedia/google/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->generateNonExecutableJson:Z

    .line 153
    return-object p0
.end method

.method public registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/millennialmedia/google/gson/GsonBuilder;
    .locals 3
    .parameter "type"
    .parameter "typeAdapter"

    .prologue
    .line 553
    instance-of v1, p2, Lcom/millennialmedia/google/gson/JsonSerializer;

    if-nez v1, :cond_0

    instance-of v1, p2, Lcom/millennialmedia/google/gson/JsonDeserializer;

    if-nez v1, :cond_0

    instance-of v1, p2, Lcom/millennialmedia/google/gson/InstanceCreator;

    if-nez v1, :cond_0

    instance-of v1, p2, Lcom/millennialmedia/google/gson/TypeAdapter;

    if-eqz v1, :cond_5

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/millennialmedia/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 558
    instance-of v1, p2, Lcom/millennialmedia/google/gson/InstanceCreator;

    if-eqz v1, :cond_1

    .line 559
    iget-object v2, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    move-object v1, p2

    check-cast v1, Lcom/millennialmedia/google/gson/InstanceCreator;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    :cond_1
    instance-of v1, p2, Lcom/millennialmedia/google/gson/JsonSerializer;

    if-nez v1, :cond_2

    instance-of v1, p2, Lcom/millennialmedia/google/gson/JsonDeserializer;

    if-eqz v1, :cond_3

    .line 563
    :cond_2
    invoke-static {p1}, Lcom/millennialmedia/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/millennialmedia/google/gson/reflect/TypeToken;

    move-result-object v0

    .line 564
    .local v0, typeToken:Lcom/millennialmedia/google/gson/reflect/TypeToken;,"Lcom/millennialmedia/google/gson/reflect/TypeToken<*>;"
    iget-object v1, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-static {v0, p2}, Lcom/millennialmedia/google/gson/TreeTypeAdapter;->newFactoryWithMatchRawType(Lcom/millennialmedia/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    .end local v0           #typeToken:Lcom/millennialmedia/google/gson/reflect/TypeToken;,"Lcom/millennialmedia/google/gson/reflect/TypeToken<*>;"
    :cond_3
    instance-of v1, p2, Lcom/millennialmedia/google/gson/TypeAdapter;

    if-eqz v1, :cond_4

    .line 568
    iget-object v1, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-static {p1}, Lcom/millennialmedia/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/millennialmedia/google/gson/reflect/TypeToken;

    move-result-object v2

    check-cast p2, Lcom/millennialmedia/google/gson/TypeAdapter;

    .end local p2
    invoke-static {v2, p2}, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->newFactory(Lcom/millennialmedia/google/gson/reflect/TypeToken;Lcom/millennialmedia/google/gson/TypeAdapter;)Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 571
    :cond_4
    return-object p0

    .line 553
    .restart local p2
    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerTypeAdapterFactory(Lcom/millennialmedia/google/gson/TypeAdapterFactory;)Lcom/millennialmedia/google/gson/GsonBuilder;
    .locals 1
    .parameter "factory"

    .prologue
    .line 585
    iget-object v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    return-object p0
.end method

.method public registerTypeHierarchyAdapter(Ljava/lang/Class;Ljava/lang/Object;)Lcom/millennialmedia/google/gson/GsonBuilder;
    .locals 3
    .parameter
    .parameter "typeAdapter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/millennialmedia/google/gson/GsonBuilder;"
        }
    .end annotation

    .prologue
    .local p1, baseType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 613
    instance-of v0, p2, Lcom/millennialmedia/google/gson/JsonSerializer;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/millennialmedia/google/gson/JsonDeserializer;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/millennialmedia/google/gson/TypeAdapter;

    if-eqz v0, :cond_4

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/millennialmedia/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 617
    instance-of v0, p2, Lcom/millennialmedia/google/gson/JsonDeserializer;

    if-nez v0, :cond_1

    instance-of v0, p2, Lcom/millennialmedia/google/gson/JsonSerializer;

    if-eqz v0, :cond_2

    .line 619
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/millennialmedia/google/gson/TreeTypeAdapter;->newTypeHierarchyFactory(Ljava/lang/Class;Ljava/lang/Object;)Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 622
    :cond_2
    instance-of v0, p2, Lcom/millennialmedia/google/gson/TypeAdapter;

    if-eqz v0, :cond_3

    .line 623
    iget-object v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->factories:Ljava/util/List;

    check-cast p2, Lcom/millennialmedia/google/gson/TypeAdapter;

    .end local p2
    invoke-static {p1, p2}, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->newTypeHierarchyFactory(Ljava/lang/Class;Lcom/millennialmedia/google/gson/TypeAdapter;)Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    :cond_3
    return-object p0

    .restart local p2
    :cond_4
    move v0, v1

    .line 613
    goto :goto_0
.end method

.method public serializeNulls()Lcom/millennialmedia/google/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->serializeNulls:Z

    .line 181
    return-object p0
.end method

.method public serializeSpecialFloatingPointValues()Lcom/millennialmedia/google/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 656
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    .line 657
    return-object p0
.end method

.method public setDateFormat(I)Lcom/millennialmedia/google/gson/GsonBuilder;
    .locals 1
    .parameter "style"

    .prologue
    .line 491
    iput p1, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->dateStyle:I

    .line 492
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    .line 493
    return-object p0
.end method

.method public setDateFormat(II)Lcom/millennialmedia/google/gson/GsonBuilder;
    .locals 1
    .parameter "dateStyle"
    .parameter "timeStyle"

    .prologue
    .line 520
    iput p1, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->dateStyle:I

    .line 521
    iput p2, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->timeStyle:I

    .line 522
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    .line 523
    return-object p0
.end method

.method public setDateFormat(Ljava/lang/String;)Lcom/millennialmedia/google/gson/GsonBuilder;
    .locals 0
    .parameter "pattern"

    .prologue
    .line 465
    iput-object p1, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    .line 466
    return-object p0
.end method

.method public varargs setExclusionStrategies([Lcom/millennialmedia/google/gson/ExclusionStrategy;)Lcom/millennialmedia/google/gson/GsonBuilder;
    .locals 6
    .parameter "strategies"

    .prologue
    const/4 v5, 0x1

    .line 362
    move-object v0, p1

    .local v0, arr$:[Lcom/millennialmedia/google/gson/ExclusionStrategy;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 363
    .local v3, strategy:Lcom/millennialmedia/google/gson/ExclusionStrategy;
    iget-object v4, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->excluder:Lcom/millennialmedia/google/gson/internal/Excluder;

    invoke-virtual {v4, v3, v5, v5}, Lcom/millennialmedia/google/gson/internal/Excluder;->withExclusionStrategy(Lcom/millennialmedia/google/gson/ExclusionStrategy;ZZ)Lcom/millennialmedia/google/gson/internal/Excluder;

    move-result-object v4

    iput-object v4, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->excluder:Lcom/millennialmedia/google/gson/internal/Excluder;

    .line 362
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 365
    .end local v3           #strategy:Lcom/millennialmedia/google/gson/ExclusionStrategy;
    :cond_0
    return-object p0
.end method

.method public setFieldNamingPolicy(Lcom/millennialmedia/google/gson/FieldNamingPolicy;)Lcom/millennialmedia/google/gson/GsonBuilder;
    .locals 0
    .parameter "namingConvention"

    .prologue
    .line 324
    iput-object p1, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->fieldNamingPolicy:Lcom/millennialmedia/google/gson/FieldNamingStrategy;

    .line 325
    return-object p0
.end method

.method public setFieldNamingStrategy(Lcom/millennialmedia/google/gson/FieldNamingStrategy;)Lcom/millennialmedia/google/gson/GsonBuilder;
    .locals 0
    .parameter "fieldNamingStrategy"

    .prologue
    .line 341
    iput-object p1, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->fieldNamingPolicy:Lcom/millennialmedia/google/gson/FieldNamingStrategy;

    .line 342
    return-object p0
.end method

.method public setLongSerializationPolicy(Lcom/millennialmedia/google/gson/LongSerializationPolicy;)Lcom/millennialmedia/google/gson/GsonBuilder;
    .locals 0
    .parameter "serializationPolicy"

    .prologue
    .line 308
    iput-object p1, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->longSerializationPolicy:Lcom/millennialmedia/google/gson/LongSerializationPolicy;

    .line 309
    return-object p0
.end method

.method public setPrettyPrinting()Lcom/millennialmedia/google/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 420
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->prettyPrinting:Z

    .line 421
    return-object p0
.end method

.method public setVersion(D)Lcom/millennialmedia/google/gson/GsonBuilder;
    .locals 1
    .parameter "ignoreVersionsAfter"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->excluder:Lcom/millennialmedia/google/gson/internal/Excluder;

    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/google/gson/internal/Excluder;->withVersion(D)Lcom/millennialmedia/google/gson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->excluder:Lcom/millennialmedia/google/gson/internal/Excluder;

    .line 117
    return-object p0
.end method
